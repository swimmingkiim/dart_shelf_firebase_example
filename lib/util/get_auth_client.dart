import 'package:googleapis/firestore/v1.dart' as firestore;
import 'package:googleapis_auth/auth_io.dart';

// Ref : https://github.com/google/googleapis.dart/tree/master/googleapis_auth#autonomous-application--service-account
Future<AutoRefreshingAuthClient> getAuthClient(
  Map<String, dynamic>? serviceAccountJson,
) async {
  if (serviceAccountJson == null) {
    return await clientViaApplicationDefaultCredentials(
      scopes: [
        firestore.FirestoreApi.cloudPlatformScope,
        firestore.FirestoreApi.datastoreScope,
      ],
    );
  }
  return await clientViaServiceAccount(
      ServiceAccountCredentials.fromJson(serviceAccountJson), [
    firestore.FirestoreApi.cloudPlatformScope,
    firestore.FirestoreApi.datastoreScope,
  ]);
}
