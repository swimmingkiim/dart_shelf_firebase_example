import 'dart:async';

import 'package:shelf/shelf.dart';

class AppMiddleware {
  FutureOr<Response> Function(Request) Function(
      FutureOr<Response> Function(Request)) printRequestUrl() {
    return createMiddleware(requestHandler: (Request request) {
      print('FROM_APP:${request.requestedUri.path}');
      return;
    });
  }
}
