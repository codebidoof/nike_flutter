import 'package:flutter/painting.dart';

/// Layer 1: 원시 색상 팔레트.
///
/// 값 변경 시 이 파일 → AppColors(semantic) → ThemeData 순으로 자동 연동.
/// 위젯이 이 클래스를 직접 참조하는 것을 금지한다. `context.colors`를 경유할 것.
abstract final class ColorPrimitives {
  // Base
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  // Grayscale
  static const Color gray700 = Color(0xFF57595B);
  static const Color gray500 = Color(0xFF767676);
  static const Color gray300 = Color(0xFFCDCDCD);
  static const Color gray250 = Color(0xFFD9D9D9);
  static const Color gray200 = Color(0xFFE4E4E4);
  static const Color gray50 = Color(0xFFF6F6F6);

  // Accent
  static const Color orange500 = Color(0xFFFC5100);
  static const Color red500 = Color(0xFFFF0000);

  // System
  /// #3C3C43 @ 60%
  static const Color systemGray = Color(0x993C3C43);

  /// #000000 @ 3%
  static const Color shadow = Color(0x08000000);
}
