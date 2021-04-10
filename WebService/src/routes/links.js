const express = require('express');
const router = express.Router();

const pool = require('../database');

//Enrouting
router.get('/add', (req, res)=>{
    res.render('links/add');
});

router.get('/ticket',(req,res)=> {
    res.json({ticket: 'Aca ira el ticket'});
});

router.post('/ticket',(req, res) =>{
    res.send('received');
    console.log(req.body);
});
module.exports = router;