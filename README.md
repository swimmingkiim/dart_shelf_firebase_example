# dart_shelf_firebase_example

## Before you test
1. Edit `lib/util/get_auth_client.dart` to make sure you request the right scopes for your project. (default code requires your project is enabled with firestore)
2. Create `lib/config/config.dart` according to `lib/config/config.example.dart`.

## Run Dev mode
1. Download `service-account.json` file of your project on Google Cloud Console.
2. Copy the file into root of this project directory.
3. Run command below to see if google authentication is ok.
```bash
dart run ./bin/dart_shelf_firebase_example.dart dev
```
4. Write your server code inside `lib/src` directory.

## Run Production mode
(currently working on it...)

## How to add controller using `shelf_router_generator` annotations
1. Create `[module_name]_controller.dart`.
2. Run below command.
```bash
dart pub run build_runner build
```