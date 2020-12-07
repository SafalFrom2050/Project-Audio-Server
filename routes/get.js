const express = require('express');
const mysql = require('mysql');

const router = express.Router();

const db = mysql.createConnection({
    database: process.env.DB_DATABASE,
    host: process.env.DB_HOST,
    password: process.env.DB_PASSWORD,
    user: process.env.DB_USER
});

router.get('/:id', (req, res) =>{
    let albumId = req.params.id;
    let sql = `SELECT * FROM shared_albums JOIN music_details ON shared_albums.shared_album_id = ${albumId}`+
            ` AND music_details.shared_album_id = ${albumId}`;
    
    db.query(sql, (err, results) =>{
        if(err){
            console.log(err);
            return;
        }

        if(results[0]){
            res.send(createResponse(results));
        }else{
            res.send("empty");
        }
    });
    console.log('Got a Request: '+req);
});

function createResponse(results){
    let deviceName = results[0].device_name;
    
    let res = deviceName + '<br>';

    results.forEach(result => {
        
        let name = result.name;
        let duration = result.duration;
        let artist = result.artist;

        res += `Name: ${name} <br> Artist: ${artist} <br> Duration: ${duration} <br><br>` 
    });

    return res;
}


module.exports = router;