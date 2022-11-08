import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'user_service.dart';

part 'user_controller.g.dart';

class UserController {
  UserController({
    required this.userService,
  });

  final UserService userService;

  Router get router => _$UserControllerRouter(this);

  @Route.get('/')
  Response sayHi(Request request) => Response.ok('hello user');

  @Route.get('/list')
  Future<Response> listUsers(Request request) async {
    final data = await userService.listUsers();
    return Response.ok(jsonEncode(data));
  }

  @Route.get('/<name|[a-zA-Z]+>')
  Response greeting(Request request, String name) =>
      Response.ok(userService.greeting(name));
}
