import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'app_service.dart';

part 'app_controller.g.dart';

class AppController {
  AppController({
    required this.appService,
  });

  final AppService appService;

  Router get router => _$AppControllerRouter(this);

  @Route.get('/')
  Response sayHi(Request request) => Response.ok('hello world');

  @Route.get('/<name|[a-zA-Z]+>')
  Response greeting(Request request, String name) =>
      Response.ok(appService.greeting(name));

  @Route.get('/list/<collectionId|[a-zA-Z]+>')
  Future<Response> listDocuments(Request request, String collectionId) async {
    final data = await appService.listDocuments(collectionId);
    return Response.ok(jsonEncode(data));
  }
}
