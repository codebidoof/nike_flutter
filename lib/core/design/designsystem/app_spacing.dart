import 'tokens/spacing_primitives.dart';

/// Layer 2: 시맨틱 간격 토큰.
///
/// 위젯은 이 클래스만 참조한다. 값은 SpacingPrimitives를 참조할 것.
abstract final class AppSpacing {
  /// 아이콘-라벨 간격
  static const double iconLabelGap = SpacingPrimitives.space3;

  /// 텍스트 그룹 간격
  static const double textGroupGap = SpacingPrimitives.space6;

  /// 리스트 아이템 간격
  static const double listItemGap = SpacingPrimitives.space10;

  /// 카드/섹션 내부 간격
  static const double contentInner = SpacingPrimitives.space16;

  /// 섹션 상하 패딩
  static const double sectionVertical = SpacingPrimitives.space20;

  /// 화면 좌우 패딩
  static const double screenHorizontal = SpacingPrimitives.space24;

  /// 내비게이션 아이템 간격
  static const double navItemGap = SpacingPrimitives.space44;

  // Radius
  /// CTA 버튼 (사이즈 선택 · 장바구니 · 위시리스트)
  static const double ctaButtonRadius = RadiusPrimitives.s100;

  /// 스크롤바
  static const double scrollbarRadius = RadiusPrimitives.s3;
}
