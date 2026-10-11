import 'package:flutter/material.dart';

/// Layer 2: 시맨틱 색상 토큰.
///
/// ThemeData.extensions에 등록되며, 위젯은 `context.colors.xxx`로 접근한다.
/// 값은 ColorPrimitives를 참조할 것.
@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    required this.textPrimary,
    required this.textSecondary,
    required this.textInverse,
    required this.textHighlight,
    required this.bgDefault,
    required this.bgSubtle,
    required this.bgPlaceholder,
    required this.bgInverse,
    required this.borderDefault,
    required this.borderStrong,
    required this.borderSubtle,
    required this.iconPrimary,
    required this.iconSystem,
    required this.iconWishActive,
    required this.indicatorTrack,
    required this.indicatorActive,
    required this.shadow,
  });

  // Text
  final Color textPrimary;
  final Color textSecondary;
  final Color textInverse;
  final Color textHighlight;

  // Background
  final Color bgDefault;
  final Color bgSubtle;
  final Color bgPlaceholder;
  final Color bgInverse;

  // Border
  final Color borderDefault;
  final Color borderStrong;
  final Color borderSubtle;

  // Icon
  final Color iconPrimary;
  final Color iconSystem;
  final Color iconWishActive;

  // Indicator
  final Color indicatorTrack;
  final Color indicatorActive;

  // Effect
  final Color shadow;

  @override
  AppThemeExtension copyWith({
    Color? textPrimary,
    Color? textSecondary,
    Color? textInverse,
    Color? textHighlight,
    Color? bgDefault,
    Color? bgSubtle,
    Color? bgPlaceholder,
    Color? bgInverse,
    Color? borderDefault,
    Color? borderStrong,
    Color? borderSubtle,
    Color? iconPrimary,
    Color? iconSystem,
    Color? iconWishActive,
    Color? indicatorTrack,
    Color? indicatorActive,
    Color? shadow,
  }) {
    return AppThemeExtension(
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textInverse: textInverse ?? this.textInverse,
      textHighlight: textHighlight ?? this.textHighlight,
      bgDefault: bgDefault ?? this.bgDefault,
      bgSubtle: bgSubtle ?? this.bgSubtle,
      bgPlaceholder: bgPlaceholder ?? this.bgPlaceholder,
      bgInverse: bgInverse ?? this.bgInverse,
      borderDefault: borderDefault ?? this.borderDefault,
      borderStrong: borderStrong ?? this.borderStrong,
      borderSubtle: borderSubtle ?? this.borderSubtle,
      iconPrimary: iconPrimary ?? this.iconPrimary,
      iconSystem: iconSystem ?? this.iconSystem,
      iconWishActive: iconWishActive ?? this.iconWishActive,
      indicatorTrack: indicatorTrack ?? this.indicatorTrack,
      indicatorActive: indicatorActive ?? this.indicatorActive,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  AppThemeExtension lerp(AppThemeExtension? other, double t) {
    if (other == null) return this;

    return AppThemeExtension(
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textInverse: Color.lerp(textInverse, other.textInverse, t)!,
      textHighlight: Color.lerp(textHighlight, other.textHighlight, t)!,
      bgDefault: Color.lerp(bgDefault, other.bgDefault, t)!,
      bgSubtle: Color.lerp(bgSubtle, other.bgSubtle, t)!,
      bgPlaceholder: Color.lerp(bgPlaceholder, other.bgPlaceholder, t)!,
      bgInverse: Color.lerp(bgInverse, other.bgInverse, t)!,
      borderDefault: Color.lerp(borderDefault, other.borderDefault, t)!,
      borderStrong: Color.lerp(borderStrong, other.borderStrong, t)!,
      borderSubtle: Color.lerp(borderSubtle, other.borderSubtle, t)!,
      iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
      iconSystem: Color.lerp(iconSystem, other.iconSystem, t)!,
      iconWishActive: Color.lerp(iconWishActive, other.iconWishActive, t)!,
      indicatorTrack: Color.lerp(indicatorTrack, other.indicatorTrack, t)!,
      indicatorActive: Color.lerp(indicatorActive, other.indicatorActive, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
    );
  }
}

extension AppColorsContext on BuildContext {
  /// 현재 테마에 등록된 시맨틱 색상 토큰.
  AppThemeExtension get colors =>
      Theme.of(this).extension<AppThemeExtension>()!;
}
