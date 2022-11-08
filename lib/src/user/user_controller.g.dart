// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$UserControllerRouter(UserController service) {
  final router = Router();
  router.add(
    'GET',
    r'/',
    service.sayHi,
  );
  router.add(
    'GET',
    r'/list',
    service.listUsers,
  );
  router.add(
    'GET',
    r'/<name|[a-zA-Z]+>',
    service.greeting,
  );
  return router;
}
