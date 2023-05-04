const express = require('express');
const router = express.Router();

const pool = require ('../database');


//AGREGAR

router.get('/add', (req, res) => {
	res.render('links/add');
});

router.post('/add', async (req, res) => {
	
	const { titulo, descripcion, direccion, ciudad, estado, precio,  } = req.body;
	const newlink = {
		titulo,
		descripcion,
		direccion,
    ciudad,
    estado,
    precio,
	};
	await pool.query('INSERT INTO publicaciones set?', [newlink]);
	res.redirect('/links');
});

//MOSTRAR

router.get('/', async (req, res) => {
	const links = await pool.query('SELECT * FROM publicaciones');
	console.log(links);
	res.render('links/list',{ links });
});

//ELIMINAR
router.get('/delete/:id_publicacion', async (req, res) => {
    const { id_publicacion } = req.params;
    await pool.query('DELETE FROM publicaciones WHERE id_publicacion = ?', [id_publicacion]);
    res.redirect('/links');
});

//EDITAR 
router.get('/edit/:id_publicacion', async (req, res) => {
  const { id_publicacion } = req.params;
  const links = await pool.query('SELECT * FROM publicaciones WHERE id_publicacion = ?', [id_publicacion]);
  res.render('links/edit', {link: links[0]});
});

router.post('/edit/:id_publicacion', async (req, res) => {
  const { id_publicacion } = req.params;
	const { titulo, descripcion, direccion, ciudad, estado, precio,  } = req.body;
	const newLink = {
		titulo,
		descripcion,
		direccion,
    ciudad,
    estado,
    precio,
	};
  console.log(newLink);
  await pool.query('UPDATE publicaciones set ? WHERE id_publicacion = ?', [newLink, id_publicacion]);
  res.redirect('/links')
});

module.exports = router;


