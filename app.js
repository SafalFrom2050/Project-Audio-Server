require('dotenv/config');

const express = require('express');
const bodyparser = require('body-parser');

const app = express();

const getRouter = require('./routes/get');
const postRouter = require('./routes/post');

const port = process.env.PORT || 3000;

app.use(bodyparser.json());
app.use('/get', getRouter);
app.use('/post', postRouter);


app.listen(port);