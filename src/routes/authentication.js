const express = require('express');
const router = express.Router();
const passport = require('passport');

const { isLoggedIn, isNotLoggedIn } = require('../lib/auth')
// REGISTRO


router.get('/signup', isNotLoggedIn, (req, res) => {
  res.render('auth/signup');
});

router.post('/signup', passport.authenticate('local.signup', {
  successRedirect: '/profile',
  failureRedirect: '/signup',
  failureFlash: true
}));

// INCICIOSESION

router.get('/signin', (req, res) => {
  res.render('auth/signin');
});

router.post('/signin', (req, res, next) => {
  passport.authenticate('local.signin', {
      
      successRedirect: '/profile',
      failureRedirect: '/signup',
      failureFlash: true

  })(req, res, next)

});



router.get('/profile', isLoggedIn, (req, res) => {
  res.render('profile');
});

 
router.get('/logout', (req, res) => {
  req.logout(() => {
    req.session.destroy(() => {
      res.redirect('/signin');
    });
  });
});


module.exports = router;
