export interface Chat {
    id: number,
    messages: ChatMessage[],
    members: number[]
}

export interface ChatMessage {
    id: number,
    text: string,
    from: number[],
    to: number[]
}