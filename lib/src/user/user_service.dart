import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis/identitytoolkit/v3.dart';

class UserService {
  UserService({required this.authClient});

  final AuthClient authClient;
  late final IdentityToolkitApi identityToolkitApi =
      IdentityToolkitApi(authClient);
  String greeting(String name) => 'hello $name';

  Future<List<UserInfo>?> listUsers() async {
    final result = await identityToolkitApi.relyingparty
        .downloadAccount(IdentitytoolkitRelyingpartyDownloadAccountRequest());
    return result.users;
  }
}
