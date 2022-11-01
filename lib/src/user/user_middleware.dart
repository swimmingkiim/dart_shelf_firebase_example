import 'package:shelf/shelf.dart';

class UserMiddleware {
  Middleware printUserName() {
    return createMiddleware(requestHandler: (Request request) {
      print('FROM_USER:${request.requestedUri.path}');
      return;
    });
  }
}
