import 'package:flutter/material.dart';
import 'package:flutter/services.dart' hide SystemUiOverlay;

import 'app/app_router.dart';
import 'app/system_ui_overlay.dart';
import 'core/designsystem/color/app_colors.dart';
import 'core/designsystem/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 앱의 루트 위젯
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Nike',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: router,
      // MaterialApp이 빌드마다 기본 SystemUiOverlayStyle을 덮어쓰므로 위젯 트리에서 지정
      builder: (context, child) {
        final surface = context.appColor.bgDefault;
        final viewPadding = MediaQuery.viewPaddingOf(context);
        final iconBrightness =
            ThemeData.estimateBrightnessForColor(surface) == Brightness.dark
            ? Brightness.light
            : Brightness.dark;

        return SystemUiOverlay(
          iconBrightness: iconBrightness,
          viewPadding: viewPadding,
          surface: surface,
          child: child!,
        );
      },
    );
  }
}
