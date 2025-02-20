import asyncio
import websockets

async def handler(websocket, path):
    print("Client connected")

    try:
        async for message in websocket:
            print(f"Message received: {message}")
            response = f"Server: received your massage '{message}'"
            await websocket.send(response)
    except websockets.exceptions.ConnectionClosed:
        print("Client disconnected")

start_server = websockets.serve(handler, "localhost", 8765)

asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()
