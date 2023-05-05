const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const pool = require('../database')
const bcrypt = require('bcrypt');
 



passport.use('local.signin', new LocalStrategy({
    usernameField: 'username',
    passwordField:  'password',
    passReqToCallback: true
}, async (req, username, password, done) => {
  const rows = await pool.query('SELECT * FROM usuarios WHERE username = ?', [username]);
  
  if (rows.length > 0) {
    const user = rows[0];
    if (password == user.password) {
      done(null, user, req.flash('success', 'Bienvenido' + user.username));
    } else {
      done(null, false, req.flash('message', 'Contraseña incorrecta'));
    }
  } else {
    return done(null, false, req.flash('message', 'El usuario no existe o esta mal escrito'));
  }
}));







  passport.use('local.signup', new LocalStrategy({
    usernameField: 'username',
    passwordField:  'password',
    passReqToCallback: true

}, async (req, username, password,  done) => {
    const { correo } = req.body;
    const newUser = {
      username,
      password,
      correo
    };
    const result = await pool.query('INSERT INTO usuarios SET ?', [newUser]);
    newUser .id = result.insertId;
    return done(null, newUser); 
}));

passport.serializeUser((user, done) => {
  done(null, user.id);
});

passport.deserializeUser(async (id, done) => {
  const rows = await pool.query('SELECT * FROM usuarios WHERE id = ?', [id]);
  done(null, rows[0]);
});
