import 'package:flutter/material.dart';

import 'core/designsystem/app_theme.dart';
import 'feature/home/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
