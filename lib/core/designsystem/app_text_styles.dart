import 'package:flutter/painting.dart';

import 'tokens/typography_primitives.dart';

/// Layer 2: 시맨틱 텍스트 스타일.
///
/// 위젯은 이 클래스만 참조한다. 색상은 포함하지 않으므로 사용처에서
/// `copyWith(color: AppColors.xxx)`로 지정할 것.
abstract final class AppTextStyles {
  // Title
  static const TextStyle titleL = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size28,
    fontWeight: TypographyPrimitives.medium,
    height: 1.2,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.168,
  );

  static const TextStyle titleM = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size20,
    fontWeight: TypographyPrimitives.medium,
    height: 1.2,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size16,
    fontWeight: TypographyPrimitives.medium,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.4,
  );

  // Control
  static const TextStyle button = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size16,
    fontWeight: TypographyPrimitives.medium,
    height: 1.2,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0,
  );

  // 상단 카테고리 탭
  static const TextStyle tab = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size16,
    fontWeight: TypographyPrimitives.regular,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.4,
  );

  // Body
  static const TextStyle bodyL = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size16,
    fontWeight: TypographyPrimitives.regular,
    height: 1.5,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.384,
  );

  static const TextStyle bodyMMedium = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size14,
    fontWeight: TypographyPrimitives.medium,
    height: 1.2,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.14,
  );

  static const TextStyle bodyM = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size14,
    fontWeight: TypographyPrimitives.regular,
    height: 1.2,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.14,
  );

  static const TextStyle bodyMLight = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size14,
    fontWeight: TypographyPrimitives.light,
    height: 1.2,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size12,
    fontWeight: TypographyPrimitives.regular,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.3,
  );

  // Navigation
  static const TextStyle navLabelActive = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size10,
    fontWeight: TypographyPrimitives.bold,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.2,
  );

  static const TextStyle navLabel = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size10,
    fontWeight: TypographyPrimitives.regular,
    height: 1,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.2,
  );

  // System
  static const TextStyle systemTime = TextStyle(
    fontFamily: TypographyPrimitives.notoSansKr,
    fontSize: TypographyPrimitives.size14,
    fontWeight: TypographyPrimitives.bold,
    height: 1.1429,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: -0.28,
  );
}
