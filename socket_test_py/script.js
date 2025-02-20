const socket = new WebSocket("ws://localhost:8765");

socket.onopen = () => {
    console.log("Connected to the server via web socket");
};

socket.onmessage = (event) => {
    document.getElementById("response").innerText = event.data;
};

function sendMessage() {
    socket.send("Hello from the client");
}

socket.onclose = () => {
    console.log("Closed connection");
};