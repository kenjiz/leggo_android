import 'package:leggo_rider/app/app.dart';
import 'package:leggo_rider/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
