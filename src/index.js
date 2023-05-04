const express = require('express');
const morgan = require('morgan');
const { engine } = require ('express-handlebars');
const path = require('path');

// inicio
const app = express();

// config

process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';

app.set('host', '192.168.1.97');
app.set('port', process.env.PORT || 8000);
app.set('views', path.join(__dirname, 'views'));
app.engine('.hbs', engine({
	defaultLayout: 'main',
	layoutsDir: path.join(app.get('views'), 'layouts'),
	partialsDir:  path.join(app.get('views'), 'partials'),
	extname: '.hbs',
	helpers: require('./lib/handlebars')
}))
app.set('view engine', '.hbs');

// Widlebars
app.use(morgan('dev'));
app.use(express.urlencoded({extended: false}));
app.use(express.json());
//Variables globales

app.use((req, res, next) => {

	next();
});

// Rutas
app.use(require('./routes'));
app.use(require('./routes/authentication'));
app.use('/links',require('./routes/links'));


// public

app.use(express.static(path.join(__dirname, 'public')));


// inicio del server
app.listen(app.get('port'), () => { console.log('Server on port', app.get('port'));
});
