#ifndef INCLUDE_HTTP_SESSION
#define INCLUDE_HTTP_SESSION

#include <boost/asio.hpp>
#include <iostream>

using namespace boost::asio;
using namespace boost::asio::ip;

class http_session : public std::enable_shared_from_this<http_session> {
public:
  http_session(tcp::socket socket) : socket_(std::move(socket)) {}

  void start() {
    do_read();
  }

private:
  void do_read();
  void do_write(std::size_t length);

  tcp::socket socket_;
  enum { max_length = 1024 };
  char data_[max_length];
};

#endif