/*
Conection between server and client. The server receives a message by the client and responds with the same.
*/

#include <iostream>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <unistd.h>

using namespace std;

int main()
{
    int server_fd, client_fd;
    int portNum = 8080;
    int bufsize = 1024;
    char buffer[bufsize];

    struct sockaddr_in server_addr, client_addr;
    socklen_t addr_size;

    // 1. Create a TCP socket
    server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd < 0) 
    {
        cerr << "Error establishing socket..." << endl;
        exit(1);
    }
    cout << "=> Socket server has been created..." << endl;

    // 2. Configure the server address structure
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY; // Corrected
    server_addr.sin_port = htons(portNum);

    // 3. Bind the socket
    if (bind(server_fd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) 
    {
        cerr << "Error binding socket!" << endl;
        close(server_fd);
        exit(1);
    }
    cout << "=> Server bound to port " << portNum << endl;

    // 4. Listen for incoming connections
    if (listen(server_fd, 1) < 0) 
    {
        cerr << "Error listening on socket!" << endl;
        close(server_fd);
        exit(1);
    }
    cout << "=> Listening for incoming connections..." << endl;

    // 5. Accept a client connection
    addr_size = sizeof(client_addr);
    client_fd = accept(server_fd, (struct sockaddr*)&client_addr, &addr_size);
    if (client_fd < 0) 
    {
        cerr << "Error accepting connection!" << endl;
        close(server_fd);
        exit(1);
    }
    cout << "=> Client connected from " << inet_ntoa(client_addr.sin_addr) << endl;

    // 6. Communication loop
    while (true) 
    {
        memset(buffer, 0, bufsize); // Clear buffer
        int bytesReceived = recv(client_fd, buffer, bufsize, 0);
        if (bytesReceived <= 0) 
        {
            cout << "=> Connection closed by client." << endl;
            break;
        }
        cout << "Client: " << buffer << endl;

        // Echo message back to client
        send(client_fd, buffer, bytesReceived, 0);
    }

    // 7. Close sockets
    close(client_fd);
    close(server_fd);
    return 0;
}
