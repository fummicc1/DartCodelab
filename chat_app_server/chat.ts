export interface Chat {
    id: number,
    messages: ChatMessage[],
    members: string[],
    createdAt: Date
}

export interface ChatMessage {
    id: number,
    text: string,
    from: string,
    to: string,
    createdAt: Date,
}