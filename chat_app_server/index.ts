import express from 'express';
import http from 'http';
import SocketIO from 'socket.io';
import redis from 'redis';
import { Chat } from './chat';

const app = express()
const client = redis.createClient()
const server = new http.Server(app)
const io = SocketIO(server)
const PORT = process.env.PORT || 7000;

let chats: Chat[] = []

function getChats() {
    client.get("chats", (error, reply) => {
        chats = JSON.parse(reply)
    })
}

client.on("error", (error) => {
    console.error(error)
})

app.get('/', (request, response) => {
    response.send('Socket IO is running!')
})

io.on('connection', (socket) => {
    socket.id
    console.log('connected')
    socket.on("create_chat", (data) => {
        let chat: Chat = JSON.parse(data)
        client.set("chats", JSON.stringify(chats), (error) => {
            if (error) console.error(error)
            else getChats()
            socket.broadcast.emit("")
        })        
    })
})

server.listen(PORT, () => {
    console.log('server listens. PORT: ' + PORT)
})