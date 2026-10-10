import 'package:flutter/painting.dart';

import 'tokens/color_primitives.dart';

/// Layer 2: 시맨틱 색상 토큰.
///
/// 위젯은 이 클래스만 참조한다. 값은 ColorPrimitives를 참조할 것.
abstract final class AppColors {
  // Text
  static const Color textPrimary = ColorPrimitives.black;
  static const Color textSecondary = ColorPrimitives.gray500;
  static const Color textInverse = ColorPrimitives.white;
  static const Color textHighlight = ColorPrimitives.orange500;

  // Background
  static const Color bgDefault = ColorPrimitives.white;
  static const Color bgSubtle = ColorPrimitives.gray50;
  static const Color bgPlaceholder = ColorPrimitives.gray250;
  static const Color bgInverse = ColorPrimitives.black;

  // Border
  static const Color borderDefault = ColorPrimitives.gray200;
  static const Color borderStrong = ColorPrimitives.black;
  static const Color borderSubtle = ColorPrimitives.gray300;

  // Icon
  static const Color iconPrimary = ColorPrimitives.black;
  static const Color iconSystem = ColorPrimitives.systemGray;
  static const Color iconWishActive = ColorPrimitives.red500;

  // Indicator
  static const Color indicatorTrack = ColorPrimitives.gray300;
  static const Color indicatorActive = ColorPrimitives.gray700;
}
