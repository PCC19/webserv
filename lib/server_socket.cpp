#include "log.hpp"
#include "socket.hpp"
#include <stdlib.h>
#include <unistd.h>

TCPServerSocket::TCPServerSocket() {}

TCPServerSocket::TCPServerSocket(const TCPServerSocket &s) {}

TCPServerSocket &TCPServerSocket::operator=(const TCPServerSocket &s) {
  if (this != &s) {
    listener_sockfd = s.listener_sockfd;
    host = s.host;
    port = s.port;
    _mode = s._mode;
  }
  return *this;
}

/**
 * @brief Creates a new internet socket file descriptor and sets it to the
 * specified blocking mode. The socket created should be a server socket, ready
 * to accept incoming connections.
 *
 * @param host The hostname of the server to connect to. (e.g. "localhost")
 * @param port The port of the server to connect to. (e.g. 8080)
 * @param mode The blocking mode to set the socket to. Defaults to NON_BLOCKING.
 * @return int The file descriptor of the new socket.
 * @throws SocketException If the socket could not be created.
 **/
TCPServerSocket::TCPServerSocket(const std::string &host,
                                 const unsigned short &port,
                                 enum BlockingMode mode)
    : Socket(host, port, mode) {
  listener_sockfd = Socket::_socket(SIN_FAMILY, SOCK_STREAM, 0);
  _setsockopt();
  _bind();
  _listen();
}

TCPServerSocket::~TCPServerSocket() {}

void TCPServerSocket::server() {
  if (_mode == BLOCKING) {
    _blocking_server();
  }
  if (_mode == NON_BLOCKING) {
    _non_blocking_server();
  }
}

void TCPServerSocket::_blocking_server() {

  struct sockaddr_storage their_addr;
  int addr_length = sizeof their_addr;

  LOG(INFO) << "Listening for connections on " << host << ":" << port;
  while (true) {

    int new_fd = accept(listener_sockfd, (struct sockaddr *)NULL, NULL);
    if (new_fd < 0) {
      throw SocketException("Could not accept client connection");
    }

    if (!fork()) {
      close(listener_sockfd);
      if (send(new_fd, "Hello, world!", 13, 0) < 0) {
        throw SocketException("Could not send message");
      }
      close(new_fd);
      exit(0);
    }
  }
}

void TCPServerSocket::_non_blocking_server() {
  LOG(INFO) << "TCPServerSocket::_non_blocking_server()";
}

void TCPServerSocket::_setsockopt(void) {
  int yes = 1;
  if (setsockopt(listener_sockfd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int)) <
      0) {
    throw SocketException("Could not set socket options");
  }
}

void TCPServerSocket::_bind(void) {
  struct sockaddr_in serv_addr;

  serv_addr.sin_family = AF_INET;
  serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
  serv_addr.sin_port = htons(port);

  if (bind(listener_sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) <
      0) {
    throw SocketException("Could not bind socket");
  }
}

void TCPServerSocket::_listen(void) {
  if (listen(listener_sockfd, MAX_CONNECTIONS) < 0) {
    throw SocketException("Could not listen on socket");
  }
}