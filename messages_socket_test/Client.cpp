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
    int client_fd;
    int portNum = 8080;
    int bufsize = 1024;
    char buffer[bufsize];
    const char* server_ip = "127.0.0.1";

    struct sockaddr_in server_addr;

    // 1. Create a TCP socket
    client_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (client_fd < 0) 
    {
        cerr << "Error establishing socket..." << endl;
        exit(1);
    }
    cout << "=> Client socket created..." << endl;

    // 2. Configure the server address structure
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(portNum);

    // Convert IP from text to binary form
    if (inet_pton(AF_INET, server_ip, &server_addr.sin_addr) <= 0) 
    {
        cerr << "Invalid address/Address not supported" << endl;
        close(client_fd);
        exit(1);
    }

    // 3. Connect to the server
    if (connect(client_fd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) 
    {
        cerr << "Connection failed!" << endl;
        close(client_fd);
        exit(1);
    }
    cout << "=> Connected to the server on port " << portNum << endl;

    // 4. Communication loop
    while (true) 
    {
        cout << "You: ";
        cin.getline(buffer, bufsize);
        
        // Send message to server
        send(client_fd, buffer, strlen(buffer), 0);

        // If user types "exit", break loop
        if (strcmp(buffer, "exit") == 0) 
            break;

        // Receive response from server
        memset(buffer, 0, bufsize);
        int bytesReceived = recv(client_fd, buffer, bufsize, 0);
        if (bytesReceived <= 0) 
        {
            cout << "=> Server disconnected." << endl;
            break;
        }
        cout << "Server: " << buffer << endl;
    }

    // 5. Close socket
    close(client_fd);
    return 0;
}
