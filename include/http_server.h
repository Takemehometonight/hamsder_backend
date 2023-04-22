#ifndef INCLUDE_SERVER
#define INCLUDE_SERVER

#include <boost/asio.hpp>
#include <iostream>

#include "http_session.h"

using namespace boost::asio;
using namespace boost::asio::ip;

class http_server {
public:
  http_server(boost::asio::io_context& io_context, short port);

private:
  void do_accept();

  tcp::acceptor acceptor_;
};

#endif