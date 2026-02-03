import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared/shared.dart';
import 'package:shared/src/constants/constants.dart';

/// Global app configuration
///
class AppConfig {
  AppConfig._(
    this._appType,
    this._environment,
    this._baseUrl,
    this._someApiKey,
  );

  final AppType _appType;
  final Environment _environment;
  final String _baseUrl;
  final String _someApiKey;
  // add more config fields as needed

  static late AppConfig _instance;

  /// Initialize once at app startup
  static Future<void> initialize({required AppType appType}) async {
    final environment = Environment.fromFlavor;

    debugPrint('environment: ${environment.envFileName}');

    // Load the appropriate .env file
    await dotenv.load(fileName: environment.envFileName);

    final baseUrl = _getBaseUrl();
    final apiKey = _getApiKey();

    _instance = AppConfig._(
      appType,
      environment,
      baseUrl,
      apiKey,
    );
  }

  static String _getBaseUrl() {
    return dotenv.get(kbaseUrl);
  }

  static String _getApiKey() {
    return dotenv.get(kApiKey);
  }

  // Static accessors for global access anywhere
  static AppType get appType => _instance._appType;
  static Environment get environment => _instance._environment;
  static String get baseUrl => _instance._baseUrl;
  static String get apiKey => _instance._someApiKey;

  // for debugging
  static void printValues() {
    if (kDebugMode) {
      debugPrint(_instance.toString());
    }
  }

  @override
  String toString() =>
      '''
AppConfig(
  appType: ${appType.name},
  environment: ${environment.name},
  baseUrl: $baseUrl,
  apiKey: ${apiKey.isEmpty ? 'not set' : '***'},
)''';
}
