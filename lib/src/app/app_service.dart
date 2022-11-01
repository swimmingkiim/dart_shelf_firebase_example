import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

import '../../config/config.dart';

class AppService {
  AppService({required this.authClient});
  final AuthClient authClient;
  late final FirestoreApi firestoreApi = FirestoreApi(authClient);
  late final rootPath = 'projects/$projectId/databases/(default)/documents';

  String greeting(String name) => 'hello $name';

  Future<List<Document>?> listDocuments(String collectionId) async {
    final result = await firestoreApi.projects.databases.documents
        .listDocuments(rootPath, collectionId);
    return result.documents;
  }
}
