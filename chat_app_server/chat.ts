export interface Chat {
    id: number,
    messages: ChatMessage[],
    members: number[],
    createdAt: Date
}

export interface ChatMessage {
    id: number,
    text: string,
    from: number,
    to: number,
    createdAt: Date,
}