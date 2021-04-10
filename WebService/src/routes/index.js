const express = require('express');
const router = express.Router();

router.get('/', (req, res) =>{
    res.send('You can!, Focus');
});

module.exports = router;