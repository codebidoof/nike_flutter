import 'dart:ui';

/// Layer 1: 원시 타이포그래피 스케일.
///
/// 위젯은 이 클래스를 직접 참조하지 말고 AppTextStyles를 경유할 것.
abstract final class TypographyPrimitives {
  // Family
  /// pubspec.yaml의 `fonts.family`와 일치해야 한다.
  static const String notoSansKr = 'Noto Sans KR';

  // Size
  static const double size10 = 10;
  static const double size12 = 12;
  static const double size14 = 14;
  static const double size16 = 16;
  static const double size20 = 20;
  static const double size28 = 28;

  // Weight
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;
}
