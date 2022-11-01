import 'dev.dart';
import 'prod.dart';

void main(List<String> arguments) async {
  if (arguments[0] == 'dev') {
    mainDev();
  } else {
    await mainProd();
  }
}
