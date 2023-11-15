const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');
require('dotenv').config();

// create and config server
const server = express();
server.use(cors());
server.use(express.json());

// init express aplication
const serverPort = 4001;
server.listen(serverPort, () => {
  console.log(`Server listening at http://localhost:${serverPort}`);
});

// conexion con la BD
async function getConnection() {
  const connection = await mysql.createConnection({
    host: process.env.HOST,
    user: process.env.DBUSER,
    password: process.env.PASS,
    database: process.env.DATABASE,
  });
  await connection.connect();
  console.log(
    `Conexión establecida con la base de datos (identificador=${connection.threadId})`
  );

  return connection;
}
// creamos  nuestros endpoints
//get, post, put, delete

//GET para ver la DB en local con el endpoint
server.get('/spells', async (req, res) => {
  const connection = await getConnection();
  const query = 'SELECT * FROM spells';
  const [results] = await connection.query(query);
  const numOfElements = results.length;
  connection.end();
  res.json({ info: { count: numOfElements }, results: results });
});

//GET a un sólo elemento
server.get('/spells/:id', async (req, res) => {
  const connection = await getConnection();
  const idSpell = req.params.id;
  const query = 'SELECT * FROM spells WHERE idSpell = ?';
  const [results] = await connection.query(query, [idSpell]);
  connection.end();
  res.json(results);
});

//POST para dar una respuesta cuando vaya bien y otra cuando falle
server.post('/spells', async (req, res) => {
  try {
    const connection = await getConnection();
    const query =
      'INSERT INTO spells (spell, name, description) VALUES (?, ?, ?);';

    const [results] = await connection.query(query, [
      req.body.spell,
      req.body.name,
      req.body.description,
    ]);
    console.log(results);
    console.log(results.insertId);
    connection.end();
    res.json({
      success: true,
      id: results.insertId,
    });
  } catch (error) {
    res.json({
      success: false,
      message: 'Se te ha olvidado algo o el servidor se ha caido',
    });
  }
});

//PUT, para hacer modificaciones
server.put('/spells/:id', async (req, res) => {
  try {
    const connection = await getConnection();
    const idSpell = req.params.id;
    console.log(req.params);
    const query =
      'UPDATE spells SET spell = ?, name = ?, description = ? WHERE idSpell	= ?;';
    const [results] = await connection.query(query, [
      req.body.spell,
      req.body.name,
      req.body.description,
      idSpell,
    ]);
    connection.end();
    res.json({
      success: true,
    });
  } catch (error) {
    res.json({
      success: false,
      message: 'Se te ha olvidado algo o el servidor se ha caido',
    });
  }
});

//DELETE, para borrar definitivamente un elemento
server.delete('/spells/:id', async (req, res) => {
  try {
    const connection = await getConnection();
    console.log(getConnection());
    const idSpell = req.params.id;

    const query = 'DELETE FROM spells WHERE idSpell = ?';
    const [results] = await connection.query(query, [idSpell]);
    connection.end();
    console.log(results);
    res.json({
      success: true,
    });
  } catch (error) {
    res.json({
      success: false,
      message: 'No hemos podido borrarlo. Sorry...',
    });
  }
});
