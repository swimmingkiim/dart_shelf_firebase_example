// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dart_shelf_firebase_example/dart_shelf_firebase_example.dart';

Future mainProd() async {
  final projectId = await currentProjectId();
  print('Current GCP project id: $projectId');

  final authClient = await getAuthClient(null);

  try {
    final app = AppModule(authClient: authClient);

    await serveHandler(app.router);
  } finally {
    authClient.close();
  }
}
