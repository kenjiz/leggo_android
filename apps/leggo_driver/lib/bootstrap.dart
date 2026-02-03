import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:shared/shared.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize environment configuration for driver app
  await AppConfig.initialize(appType: AppType.driver);

  AppConfig.printValues();

  runApp(await builder());
}
