"use strict";
import express from "express";
const app = express();
app.use(express.json());

let cartas = [
    {
        "id": 1,
        "type": "Cowboy raccoon",
        "name": "Western Bandit"

    },
    {
        "id": 2,
        "type": "Wizard raccoon",
        "name": "Magic Master"
    },
    {
        "id": 3,
        "type": "Warrior raccoon",
        "name": "Stealth Assassin"
    }
]

function ValueCard(card){
    const cardExpected = {
        "id": "number",
        "type": "string",
        "name": "string"
    
    }
    for (let field in cardExpected){
        if (card.Property(field) && typeof card[field] !== cardExpected[field]){
            return false
        }
    }
    return true
}
// Regresar todas las cartas
app.get('/cartas', (req, res) => {
    if (cartas.length === 0) {
        res.send('No hay cartas.');
    } else {
        res.json(cartas);
    }
});

// Regresar una carta en base a un ID
app.get('/cartas/:id', (req, res) => {
    const carta = cartas.find(c => c.id === parseInt(req.params.id));
    if (!carta) res.status(404).send('La carta con el ID dado no existe.');
    res.json(carta);
});

// Agregar nuevas cartas a la lista
app.post('/cartas', (req, res) => {
    const nuevaCarta = req.body;
    const existeCarta = cartas.find(c => c.id === nuevaCarta.id);
    if (existeCarta) {
        res.status(400).json({ message: 'La carta ya existe.' });
    } else {
        cartas.push(nuevaCarta);
        res.json({ message: 'Carta agregada correctamente.' });
    }
});

// Borrar una carta en base a su ID
app.delete('/cartas/:id', (req, res) => {
    const carta = cartas.find(c => c.id === parseInt(req.params.id));
    if (!carta) {
        res.status(404).send('La carta con el ID dado no existe.');
    } else {
        const index = cartas.indexOf(carta);
        cartas.splice(index, 1);
        res.send('Carta borrada.');
    }
});

// Actualizar una carta en base a su ID
app.put('/cartas/:id', (req, res) => {
    const carta = cartas.find(c => c.id === parseInt(req.params.id));
    if (!carta) {
        res.status(404).send('La carta con el ID dado no existe.');
    } else {
        Object.assign(carta, req.body);
        res.send('Carta actualizada.');
    }
});


const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Servidor corriendo en puerto ${port}`));
