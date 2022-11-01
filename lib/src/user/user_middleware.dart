import 'package:collection/collection.dart';
import 'package:shelf/shelf.dart';

class UserMiddleware {
  Middleware printUserName() {
    return createMiddleware(requestHandler: (Request request) {
      print('FROM_USER:${request.requestedUri.path}');
      if (request.url.pathSegments.firstOrNull != null) {
        print('USER_NAME:${request.url.pathSegments.first}');
      }
      return;
    });
  }
}
