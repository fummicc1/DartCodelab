import express from 'express';
import http from 'http';
import SocketIO from 'socket.io';

const app = express()
const server = new http.Server(app)
const io = SocketIO(server)
const PORT = process.env.PORT || 7000;

app.get('/', (request, response) => {
    response.send('Socket IO is running!')
})

io.on('connection', (socket) => {
    console.log('connected')
})

server.listen(PORT, () => {
    console.log('server listens. PORT: ' + PORT)
})