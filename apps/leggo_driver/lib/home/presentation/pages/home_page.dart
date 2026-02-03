import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class DriverHomePage extends StatelessWidget {
  const DriverHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Home Page of the DRIVER APP',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text('App Type: ${AppConfig.appType}'),
            Text('Environment: ${AppConfig.environment}'),
            Text('Base URL: ${AppConfig.baseUrl}'),
            Text('API Key: ${AppConfig.apiKey}'),
          ],
        ),
      ),
    );
  }
}
