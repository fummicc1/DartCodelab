import express from 'express';
import http from 'http';

const app = express()
const server = new http.Server(app)
const PORT = process.env.PORT || 7000;

app.get('/api/v1/chat/:id', (request, response) => {
    
})