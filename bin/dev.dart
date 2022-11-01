import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:dart_shelf_firebase_example/dart_shelf_firebase_example.dart';

void mainDev() async {
  final authClient = await getAuthClient(
    jsonDecode(
      File('./service_account.json').readAsStringSync(),
    ),
  );

  final app = AppModule();
  final server =
      await shelf_io.serve(app.router, InternetAddress.loopbackIPv4, 8080);

  print('Serving at http://${server.address.host}:${server.port}');
}
