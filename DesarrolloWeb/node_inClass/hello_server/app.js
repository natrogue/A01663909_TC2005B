"use strict"

import express from 'express';

const port = 3000;
const app = express(); //crear un objeto app

let cards = []

let card_list = []

app.use(express.json())

app.get("/name", (req, res) => {
    const salute = "hello from server"
    console.log(req)
    res.status(200).send(salute);
});

app.get("/hello/:name", (req, res) => {
    console.log(req.params)
    const salute = `Hello ${req.params.name}!!`
    res.status(200).send(salute)
});


app.post("/cards", (req, res) => {
    console.log(req.body)
    card_list.push(req.body)
    res.status(201).send("Card created")
})

app.listen(port, () => {
    console.log(`Running on port ${port}`);
});
