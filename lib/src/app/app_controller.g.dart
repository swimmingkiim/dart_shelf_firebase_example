// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$AppControllerRouter(AppController service) {
  final router = Router();
  router.add(
    'GET',
    r'/',
    service.sayHi,
  );
  router.add(
    'GET',
    r'/<name|[a-zA-Z]+>',
    service.greeting,
  );
  return router;
}
