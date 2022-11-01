import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'user_controller.dart';
import 'user_middleware.dart';
import 'user_service.dart';

class UserModule {
  UserModule({required this.authClient});

  final AuthClient authClient;

  final UserController userController =
      UserController(userService: UserService());
  final UserMiddleware userMiddleware = UserMiddleware();

  Handler get router => Pipeline()
      .addMiddleware(
        userMiddleware.printUserName(),
      )
      .addHandler(
        userController.router,
      );
}
