const express = require('express');
const router = express.Router();

const pool = require ('../database');
const { isLoggedIn } = require ('../lib/auth')

//AGREGAR

router.get('/add', isLoggedIn, (req, res) => {
	res.render('links/add');
});

router.post('/add', isLoggedIn, async (req, res) => {
	
	const { titulo, descripcion, direccion, ciudad, estado, precio,  } = req.body;
	const newlink = {
		titulo,
		descripcion,
		direccion,
    ciudad,
    estado,
    precio,
    id_usuario: req.user.id 
	};
	await pool.query('INSERT INTO publicaciones set?', [newlink]);
	req.flash('success', 'Se ha guardado correctamente');
  res.redirect('/links');
});
//MOSTRAR



router.get('/', isLoggedIn, async (req, res) => {
  const links = await pool.query(`
    SELECT p.*, u.username
    FROM publicaciones p
    JOIN usuarios u ON p.id_usuario = u.id
    WHERE p.id_usuario NOT IN (?)
  `, [req.user.id]);
  console.log(links);
  res.render('links/list', { links });
});





//ELIMINAR
router.get('/delete/:id_publicacion', isLoggedIn, async (req, res) => {
    const { id_publicacion } = req.params;
    await pool.query('DELETE FROM publicaciones WHERE id_publicacion = ?', [id_publicacion]);
    req.flash('success', 'Se ha eliminado correctamente');
    res.redirect('/links');
});

//EDITAR 
router.get('/edit/:id_publicacion', isLoggedIn, async (req, res) => {
  const { id_publicacion } = req.params;
  const links = await pool.query('SELECT * FROM publicaciones WHERE id_publicacion = ?', [id_publicacion]);
  req.flash('success', 'Se ha editado correctamente');
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


