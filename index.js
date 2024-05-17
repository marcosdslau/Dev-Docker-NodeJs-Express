const express = require('express');
const app = express();
const Router = express.Router();

Router.get('/', (req, res, next) => {
    res.send("Hellow World! Teste 2")
});


app.use('/', Router);

const PORT = 3000;
const HOST = '0.0.0.0';

app.listen(PORT, HOST);