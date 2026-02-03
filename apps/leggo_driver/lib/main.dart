import 'package:leggo_driver/app/app.dart';
import 'package:leggo_driver/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
