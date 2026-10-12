import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

import '../color/app_colors.dart';
import '../designsystem/app_spacing.dart';
import '../theme/app_theme.dart';

/// 보조 액션에 쓰는 테두리형 CTA 버튼 (사이즈 선택 · 위시리스트 · 프로필 수정).
///
/// [icon]은 라벨 오른쪽에 24x24로 놓인다.
/// 가로는 부모가 허용하는 만큼 채우고, [expand]가 false면 내용 크기에 맞춘다.
/// [onPressed]가 null이면 비활성화된다.
class OutlinedCtaButton extends StatelessWidget {
  const OutlinedCtaButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.expand = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final Widget? icon;
  final bool expand;

  // design.pen의 CTA 기준 높이
  static const double _height = 51;
  static const double _iconSize = 24;
  static const double _iconGap = 10;

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: color.textPrimary,
        minimumSize: expand
            ? const Size.fromHeight(_height)
            : const Size(0, _height),
        // 아이콘이 있으면 좌우 33, 라벨만 있으면 51
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: icon == null ? 51 : 33,
        ),
        side: BorderSide(
          color: color.borderDefault,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.ctaButtonRadius),
        ),
      ),
      child: Row(
        mainAxisSize: .min,
        mainAxisAlignment: .center,
        children: [
          Text(
            label,
            style: context.appText.button.copyWith(color: color.textPrimary),
          ),
          if (icon != null) ...[
            const SizedBox(width: _iconGap),
            IconTheme.merge(
              data: IconThemeData(size: _iconSize, color: color.iconPrimary),
              child: SizedBox.square(dimension: _iconSize, child: icon),
            ),
          ],
        ],
      ),
    );
  }
}

// design.pen의 상세 화면 CTA 기준 크기
const Size outlinedCtaButtonPreviewSize = Size(327, 56);

// context.appColor / context.appText가 테마 확장을 요구하므로 AppTheme으로 감싼다.
// 프리뷰어의 밝기 전환을 따르고, 프리뷰어 배경과 겹치지 않게 bgDefault를 깐다.
Widget outlinedCtaButtonPreviewWrapper(Widget child) => Builder(
  builder: (context) => Theme(
    data: MediaQuery.platformBrightnessOf(context) == Brightness.dark
        ? AppTheme.dark
        : AppTheme.light,
    child: Builder(
      builder: (context) => ColoredBox(
        color: context.appColor.bgDefault,
        child: Center(child: child),
      ),
    ),
  ),
);

@Preview(
  group: 'OutlinedCtaButton',
  name: 'OutlinedCtaButton - 사이즈 선택',
  size: outlinedCtaButtonPreviewSize,
  wrapper: outlinedCtaButtonPreviewWrapper,
)
Widget outlinedCtaButtonSizePreview() => OutlinedCtaButton(
  label: '사이즈 선택',
  icon: const Icon(Icons.keyboard_arrow_down),
  onPressed: () {},
);

@Preview(
  group: 'OutlinedCtaButton',
  name: 'OutlinedCtaButton - 위시리스트',
  size: outlinedCtaButtonPreviewSize,
  wrapper: outlinedCtaButtonPreviewWrapper,
)
Widget outlinedCtaButtonWishPreview() => OutlinedCtaButton(
  label: '위시리스트',
  icon: const Icon(Icons.favorite_border),
  onPressed: () {},
);

@Preview(
  group: 'OutlinedCtaButton',
  name: 'OutlinedCtaButton - 프로필 수정',
  size: outlinedCtaButtonPreviewSize,
  wrapper: outlinedCtaButtonPreviewWrapper,
)
Widget outlinedCtaButtonProfilePreview() =>
    OutlinedCtaButton(label: '프로필 수정', expand: false, onPressed: () {});
