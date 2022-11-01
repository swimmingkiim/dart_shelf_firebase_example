import 'package:dart_shelf_firebase_example/src/user/user_module.dart';
import 'package:shelf/shelf.dart';
import 'app_controller.dart';
import 'app_middleware.dart';
import 'app_service.dart';

class AppModule {
  AppModule();

  final AppController appController = AppController(appService: AppService());
  final AppMiddleware appMiddleware = AppMiddleware();

  final UserModule userModule = UserModule();

  late final _router = appController.router..mount('/user', userModule.router);

  Handler get router => Pipeline()
      .addMiddleware(
        appMiddleware.printRequestUrl(),
      )
      .addHandler(
        _router,
      );
}
