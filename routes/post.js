const express = require('express');
const mysql = require('mysql');

const router = express.Router();

const db = mysql.createConnection({
    database: process.env.DB_DATABASE,
    host: process.env.DB_HOST,
    password: process.env.DB_PASSWORD,
    user: process.env.DB_USER
});


router.post('', (req, res) =>{
    let deviceName = req.body.device_name;
    let pin = req.body.pin;

    let music_list = req.body.music_list;
    
    addSharedAlbum(res, deviceName, pin, music_list);
});


function addSharedAlbum(res, deviceName, pin, music_list){
    let sql = `INSERT INTO shared_albums (device_name, pin) VALUES ('${deviceName}', '${pin}');`;

    db.query(sql, (err, result) =>{
        if(err){
            console.log(err);
            return;
        }
        console.log('insert success');
        
        let albumId = result.insertId;

        addMusic(music_list, albumId);
        
        res.send('Your album id: ' + albumId);
    });
}

function addMusic(music_list, albumId){
    let sql = ``;
    music_list.forEach(music => {
        let name = music.name;
        let artist = music.artist;
        let duration = music.duration; 

        sql = `INSERT INTO music_details (name, artist, duration, shared_album_id) VALUES ('${name}',`+
            ` '${artist}', '${duration}', '${albumId}'); `;
        
        
        db.query(sql, (err) =>{
            if(err) console.log(err);
            console.log('insert success');
         });
    });
}

function deleteAlbum(albumId, res){
    let sql = `DELETE shared_albums FROM shared_albums WHERE shared_album_id = ${albumId} `
        ;

    db.query(sql, (err) =>{
        if(err){
            console.log(err);
            return;
        }
        console.log('Delete success');
        
    });
}

module.exports = router;