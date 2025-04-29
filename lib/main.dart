import 'package:abyss/core/theme/app_theme.dart';
import 'package:abyss/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.darkTheme,
      title: 'ABYSS',
      routerConfig: router,
    );
  }
}
