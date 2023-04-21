const passport = require('passport');
const FacebookStrategy = require('passport-facebook').Strategy;
const express = require('express');

const router = express.Router();
require('dotenv').config();

const accountServices = require('../../services/facebook.service')

passport.use(
    new FacebookStrategy(
        {
            clientID: process.env.clientFacebookID,
            clientSecret: process.env.clientFacebookSecret,
            callbackURL: process.env.callbackFacebookURL,
        },
        async function (accessToken, refreshToken, profile, cb) {
            return cb(null, profile);
        }
    )
);

router.get('/', passport.authenticate('facebook', { scope: 'email' }));

router.get(
    '/callback',
    passport.authenticate('facebook', {
        failureRedirect: '/auth/facebook/error',
    }),
    function (req, res) {
        // Successful authentication, redirect to success screen.
        res.redirect('/auth/facebook/success');
    }
);

router.get('/success', async (req, res) => {
    req.session.name = req.session.passport.user.displayName;
    req.session.social = "facebook"
    const check = await accountServices.checkAccount(req.session.passport.user.id)
    var status = -1
    if(check.length < 1) {
        status = await accountServices.signUpWithFacebook(req.session.passport.user.displayName,req.session.passport.user.id)
        req.session.idUser = status;
    } else {
        req.session.idUser = check[0].userid;
    }
    if(check) {
        res.redirect('/');   
    } else if(status > 0){
        res.redirect('/');   
    } else {
        res.redirect('/login');
    }
});

router.get('/error', (req, res) => res.send('Error logging in via Facebook..'));

router.get('/signout', (req, res) => {
    try {
        req.session.destroy(function (err) {
            console.log('session destroyed.');
        });
        res.render('auth');
    } catch (err) {
        res.status(400).send({ message: 'Failed to sign out fb user' });
    }
});


module.exports = router;
