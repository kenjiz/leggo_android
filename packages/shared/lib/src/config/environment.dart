import 'dart:io';
import 'package:flutter/services.dart';

/// Environment/Flavor enum
enum Environment {
  development,
  production,
  staging
  ;

  /// Get the .env file name based on environment
  String get envFileName {
    return switch (this) {
      Environment.development => '.env.development',
      Environment.staging => '.env.staging',
      Environment.production => '.env.production',
    };
  }

  /// Determine environment from app flavor
  static Environment get fromFlavor => switch (appFlavor) {
    'development' => Environment.development,
    'production' => Environment.production,
    'staging' => Environment.staging,
    _ => throw UnsupportedError('Unsupported flavor: $appFlavor'),
  };

  bool get isDevelopment => this == Environment.development;
  bool get isProduction => this == Environment.production;
  bool get isStaging => this == Environment.staging;
  bool get isTest => Platform.environment.containsKey('FLUTTER_TEST');
}
