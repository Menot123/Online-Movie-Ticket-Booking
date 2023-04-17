const passport = require('passport');
const GoogleStrategy = require('passport-google-oauth').OAuth2Strategy;
const express = require('express');
const router = express.Router();
require('dotenv').config();
const accountServices = require('../../services/google.service')


let userProfile;
passport.use(
    new GoogleStrategy(
        {
            clientID: process.env.clientGoogleID,
            clientSecret: process.env.clientGoogleSecret,
            callbackURL: process.env.callbackGoogleURL,
        },
        function (accessToken, refreshToken, profile, done) {
            userProfile = profile;
            return done(null, userProfile);
        }
    )
);

router.get('/',
    passport.authenticate('google', { scope: ['profile', 'email'] })
);

// URL Must be same as 'Authorized redirect URIs' field of OAuth client, i.e: /auth/google/callback
router.get('/callback',
    passport.authenticate('google', { failureRedirect: '/auth/google/error' }),
    (req, res) => {

        res.redirect('/auth/google/success'); // Successful authentication, redirect success.
    }
);

router.get('/success', async (req, res) => {
    req.session.name = userProfile.displayName;
    req.session.social = "google"
    const check = await accountServices.checkAccount(userProfile.emails[0].value)
    var status = -1
    if(check.length < 1) {
        status = await accountServices.signUpWithGoogle(userProfile.displayName,userProfile.emails[0].value)
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

router.get('/error', (req, res) => res.send('Error logging in via Google..'));

module.exports = router;
