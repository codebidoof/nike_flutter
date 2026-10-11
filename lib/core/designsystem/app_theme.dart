import 'package:flutter/material.dart';

import 'color/app_colors.dart';
import 'app_text_styles.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';
import 'typography/app_typography.dart';

class AppTheme {
  const AppTheme._();

  /// [main.dart]의 루트 위젯 MaterialApp에서 참조할 ThemeData 변수
  /// 다크 토큰이 분리되기 전까지는 brightness도 light로 둔다.
  static ThemeData get light => _theme(Brightness.light, const LightTheme());
  static ThemeData get dark => _theme(Brightness.light, const DarkTheme());

  /// ColorScheme은 Material 위젯 기본값용으로만 두고, 앱 색상은 [AppColors]를 쓴다.
  static ThemeData _theme(Brightness brightness, AppColors colors) => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: colors.bgInverse,
      brightness: brightness,
    ),
    textTheme: _textTheme.apply(
      bodyColor: colors.textPrimary,
      displayColor: colors.textPrimary,
    ),
    scaffoldBackgroundColor: colors.bgDefault,
    extensions: [colors, const AppTypography()],
  );

  static const TextTheme _textTheme = TextTheme(
    headlineMedium: AppTextStyles.titleL, // 28 Medium
    titleLarge: AppTextStyles.titleM, // 20 Medium
    titleMedium: AppTextStyles.subtitle, // 16 Medium
    titleSmall: AppTextStyles.tab, // 16 Regular
    labelLarge: AppTextStyles.button, // 16 Medium
    labelMedium: AppTextStyles.bodyMMedium, // 14 Medium
    labelSmall: AppTextStyles.navLabel, // 10 Regular
    bodyLarge: AppTextStyles.bodyL, // 16 Regular
    bodyMedium: AppTextStyles.bodyM, // 14 Regular
    bodySmall: AppTextStyles.caption, // 12 Regular
  );
}
