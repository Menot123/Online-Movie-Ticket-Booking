require('dotenv').config();
const path = require('path');
const express = require('express');
const handlebars = require('express-handlebars');
const sessions = require('express-session');
const app = express();
const hostname = process.env.HOST;
const port = process.env.PORT;
const passport = require('passport');
const flashMessage = require('./src/middlewares/flash-message/');

const router = require('./src/routes');


app.use(express.static(path.join(__dirname, 'src', 'public')));

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

app.use(passport.initialize());
app.use(passport.session());

passport.serializeUser(function (user, cb) {
    cb(null, user);
});
passport.deserializeUser(function (obj, cb) {
    cb(null, obj);
});

app.use(express.json());

app.use(flashMessage);


// Template engine
app.engine(
    'hbs',
    handlebars.engine({
        extname: '.hbs',
        helpers: {
            checkChoosenBackground: function (maphim1, maphim2) {
                if (maphim1 == maphim2) {
                    return 'style="background-color: rgb(198, 196, 196);"';
                } else {
                    return '';
                }
            },
            checkChoosenTextMain: function (maphim1, maphim2) {
                if (maphim1 == maphim2) {
                    return `style="color: red;"`;
                } else {
                    return '';
                }
            },
            checkChoosenTextSub: function (maphim1, maphim2) {
                if (maphim1 == maphim2) {
                    return `style="color: orange;"`;
                } else {
                    return '';
                }
            },
            formatNumber: function(number) {
                return Number(number).toLocaleString('en-US');
            },
            unformatNumber: function(number) {
                return Number(number.replace(/,/g, ''));
            }
        }
    }),
);
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'src', 'resource', 'views'));

app.use('/', router);


app.listen(port, hostname, () => {
    console.log(`App listening on port ${port}: ${hostname}`);
});