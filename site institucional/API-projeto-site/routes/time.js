var express = require('express');
var router = express.Router();
var sequelize = require('../models').sequelize;
var timeCamp = require('../models').timeCamp;

let sessoes = [];

router.post('/cadastrar_time', function(req, res, next) {
	console.log('Criando um time');
	
	timeCamp.create({
		nomeTime : req.body.nomeTime,
		kdTime: req.body.kdTime
	}).then(resultado => {
		console.log(`Registro criado: ${resultado}`)
        res.send(resultado);
    }).catch(erro => {
		console.error(erro);
		res.status(500).send(erro.message);
  	});
});

module.exports = router;