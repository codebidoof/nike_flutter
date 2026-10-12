/// @docImport '../designsystem/tokens/color_primitives.dart';
library;

import 'package:flutter/material.dart';

import '../type/app_typography.dart';

/// Layer 2: 시맨틱 색상 토큰.
///
/// ThemeData.extensions에 등록되며, 위젯은 `context.appColor.xxx`로 접근한다.
/// 값은 ColorPrimitives를 참조할 것.
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
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
  /// Light · Dark: [ColorPrimitives.black] (#000000)
  final Color textPrimary;

  /// Light · Dark: [ColorPrimitives.gray500] (#767676)
  final Color textSecondary;

  /// Light · Dark: [ColorPrimitives.white] (#FFFFFF)
  final Color textInverse;

  /// Light · Dark: [ColorPrimitives.orange500] (#FC5100)
  final Color textHighlight;

  // Background
  /// Light · Dark: [ColorPrimitives.white] (#FFFFFF)
  final Color bgDefault;

  /// Light · Dark: [ColorPrimitives.gray50] (#F6F6F6)
  final Color bgSubtle;

  /// Light · Dark: [ColorPrimitives.gray250] (#D9D9D9)
  final Color bgPlaceholder;

  /// Light · Dark: [ColorPrimitives.black] (#000000)
  final Color bgInverse;

  // Border
  /// Light · Dark: [ColorPrimitives.gray200] (#E4E4E4)
  final Color borderDefault;

  /// Light · Dark: [ColorPrimitives.black] (#000000)
  final Color borderStrong;

  /// Light · Dark: [ColorPrimitives.gray300] (#CDCDCD)
  final Color borderSubtle;

  // Icon
  /// Light · Dark: [ColorPrimitives.black] (#000000)
  final Color iconPrimary;

  /// Light · Dark: [ColorPrimitives.systemGray] (#3C3C43 @ 60%)
  final Color iconSystem;

  /// Light · Dark: [ColorPrimitives.red500] (#FF0000)
  final Color iconWishActive;

  // Indicator
  /// Light · Dark: [ColorPrimitives.gray300] (#CDCDCD)
  final Color indicatorTrack;

  /// Light · Dark: [ColorPrimitives.gray700] (#57595B)
  final Color indicatorActive;

  // Effect
  /// Light · Dark: [ColorPrimitives.shadow] (#000000 @ 3%)
  final Color shadow;

  @override
  AppColors copyWith({
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
    return AppColors(
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
  AppColors lerp(AppColors? other, double t) {
    if (other == null) return this;

    return AppColors(
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

extension BuildContextThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppColors get appColor => theme.extension<AppColors>()!;
  AppTypography get appText => theme.extension<AppTypography>()!;
}
