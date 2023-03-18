require('dotenv').config();
const path = require('path');
const express = require('express');
const handlebars = require('express-handlebars');
const sessions = require('express-session');
const app = express();
const hostname = process.env.HOST;
const port = process.env.PORT;


const route = require('./routes');
// const db = require('./config/db');

// Connect to DB
// db.connect();

app.use(express.static(path.join(__dirname, 'public')));

app.use(express.json());



app.use(sessions({
    resave: false,
    saveUninitialized: true,
    secret: 'thisissecretkey',
}));

app.use(
    express.urlencoded({
        extended: true,
    }),
);

app.use(express.json());

// Template engine
app.engine(
    'hbs',
    handlebars.engine({
        extname: '.hbs',
    }),
);
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'resource', 'views'));

// Route init
route(app);


app.listen(port,hostname, () => {
    console.log(`App listening on port ${port}: ${hostname}`);
}); 
