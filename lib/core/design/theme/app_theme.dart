import 'package:flutter/material.dart';

import '../color/app_colors.dart';
import 'dark_theme.dart';
import 'light_theme.dart';
import '../type/app_typography.dart';

class AppTheme {
  const AppTheme._();

  /// [main.dart]의 루트 위젯 MaterialApp에서 참조할 ThemeData 변수
  /// 다크 토큰이 분리되기 전까지는 brightness도 light로 둔다.
  static ThemeData get light =>
      _theme(Brightness.light, const LightTheme(), const AppTypography());
  static ThemeData get dark =>
      _theme(Brightness.light, const DarkTheme(), const AppTypography());

  /// ColorScheme은 Material 위젯 기본값용으로만 두고, 앱 색상은 [AppColors]를 쓴다.
  static ThemeData _theme(
    Brightness brightness,
    AppColors colors,
    AppTypography typography,
  ) => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: colors.bgInverse,
      brightness: brightness,
    ),
    textTheme: _textTheme(typography)
        .apply(bodyColor: colors.textPrimary, displayColor: colors.textPrimary),
    scaffoldBackgroundColor: colors.bgDefault,
    extensions: [colors, typography],
  );

  /// Material 위젯 기본값용 매핑. 위젯은 `context.appText`를 쓴다.
  static TextTheme _textTheme(AppTypography typography) => TextTheme(
    headlineMedium: typography.titleL, // 28 Medium
    titleLarge: typography.titleM, // 20 Medium
    titleMedium: typography.subtitle, // 16 Medium
    titleSmall: typography.tab, // 16 Regular
    labelLarge: typography.button, // 16 Medium
    labelMedium: typography.bodyMMedium, // 14 Medium
    labelSmall: typography.navLabel, // 10 Regular
    bodyLarge: typography.bodyL, // 16 Regular
    bodyMedium: typography.bodyM, // 14 Regular
    bodySmall: typography.caption, // 12 Regular
  );
}
