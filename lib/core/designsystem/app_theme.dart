import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    textTheme: _textTheme,
    scaffoldBackgroundColor: AppColors.textInverse,
  );

  /// W1에서는 light와 동일하게 유지. 다크 토큰 분리는 추후 진행.
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    textTheme: _textTheme,
    scaffoldBackgroundColor: AppColors.textInverse,
  );

  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.bgInverse,
    onPrimary: AppColors.textInverse,
    secondary: AppColors.indicatorActive,
    onSecondary: AppColors.textInverse,
    error: AppColors.iconWishActive,
    onError: AppColors.textInverse,
    surface: AppColors.textPrimary,
    onSurface: Color(0x00000000),
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
