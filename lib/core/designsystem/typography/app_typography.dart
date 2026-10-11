import 'package:flutter/material.dart';

import '../app_text_styles.dart';

/// 시맨틱 텍스트 스타일을 테마에 싣는 확장.
///
/// ThemeData.extensions에 등록되며, 위젯은 `context.appText.xxx`로 접근한다.
/// 값은 AppTextStyles를 참조할 것. 타이포는 테마별로 같아서 서브클래스를 두지 않는다.
@immutable
class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography({
    this.titleL = AppTextStyles.titleL,
    this.titleM = AppTextStyles.titleM,
    this.subtitle = AppTextStyles.subtitle,
    this.button = AppTextStyles.button,
    this.tab = AppTextStyles.tab,
    this.bodyL = AppTextStyles.bodyL,
    this.bodyMMedium = AppTextStyles.bodyMMedium,
    this.bodyM = AppTextStyles.bodyM,
    this.bodyMLight = AppTextStyles.bodyMLight,
    this.caption = AppTextStyles.caption,
    this.navLabelActive = AppTextStyles.navLabelActive,
    this.navLabel = AppTextStyles.navLabel,
    this.systemTime = AppTextStyles.systemTime,
  });

  // Title
  final TextStyle titleL;
  final TextStyle titleM;
  final TextStyle subtitle;

  // Control
  final TextStyle button;
  final TextStyle tab;

  // Body
  final TextStyle bodyL;
  final TextStyle bodyMMedium;
  final TextStyle bodyM;
  final TextStyle bodyMLight;
  final TextStyle caption;

  // Navigation
  final TextStyle navLabelActive;
  final TextStyle navLabel;

  // System
  final TextStyle systemTime;

  @override
  AppTypography copyWith({
    TextStyle? titleL,
    TextStyle? titleM,
    TextStyle? subtitle,
    TextStyle? button,
    TextStyle? tab,
    TextStyle? bodyL,
    TextStyle? bodyMMedium,
    TextStyle? bodyM,
    TextStyle? bodyMLight,
    TextStyle? caption,
    TextStyle? navLabelActive,
    TextStyle? navLabel,
    TextStyle? systemTime,
  }) {
    return AppTypography(
      titleL: titleL ?? this.titleL,
      titleM: titleM ?? this.titleM,
      subtitle: subtitle ?? this.subtitle,
      button: button ?? this.button,
      tab: tab ?? this.tab,
      bodyL: bodyL ?? this.bodyL,
      bodyMMedium: bodyMMedium ?? this.bodyMMedium,
      bodyM: bodyM ?? this.bodyM,
      bodyMLight: bodyMLight ?? this.bodyMLight,
      caption: caption ?? this.caption,
      navLabelActive: navLabelActive ?? this.navLabelActive,
      navLabel: navLabel ?? this.navLabel,
      systemTime: systemTime ?? this.systemTime,
    );
  }

  @override
  AppTypography lerp(AppTypography? other, double t) {
    if (other == null) return this;

    return AppTypography(
      titleL: TextStyle.lerp(titleL, other.titleL, t)!,
      titleM: TextStyle.lerp(titleM, other.titleM, t)!,
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
      tab: TextStyle.lerp(tab, other.tab, t)!,
      bodyL: TextStyle.lerp(bodyL, other.bodyL, t)!,
      bodyMMedium: TextStyle.lerp(bodyMMedium, other.bodyMMedium, t)!,
      bodyM: TextStyle.lerp(bodyM, other.bodyM, t)!,
      bodyMLight: TextStyle.lerp(bodyMLight, other.bodyMLight, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
      navLabelActive: TextStyle.lerp(navLabelActive, other.navLabelActive, t)!,
      navLabel: TextStyle.lerp(navLabel, other.navLabel, t)!,
      systemTime: TextStyle.lerp(systemTime, other.systemTime, t)!,
    );
  }
}
