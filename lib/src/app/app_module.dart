import 'package:dart_shelf_firebase_example/src/user/user_module.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'app_controller.dart';
import 'app_middleware.dart';
import 'app_service.dart';

class AppModule {
  AppModule({required this.authClient});

  final AuthClient authClient;

  late final AppController appController =
      AppController(appService: AppService(authClient: authClient));
  final AppMiddleware appMiddleware = AppMiddleware();

  late final UserModule userModule = UserModule(authClient: authClient);

  late final _router = appController.router..mount('/user', userModule.router);

  Handler get router => Pipeline()
      .addMiddleware(
        appMiddleware.printRequestUrl(),
      )
      .addHandler(
        _router,
      );
}
