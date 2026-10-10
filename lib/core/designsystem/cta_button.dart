import 'package:flutter/material.dart';

import 'app_spacing.dart';

/// 화면의 주요 액션에 쓰는 CTA 버튼.
///
/// 가로는 부모가 허용하는 만큼 채우고, [onPressed]가 null이면 비활성화된다.
class CtaButton extends StatelessWidget {
  const CtaButton({super.key, required this.label, required this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  // design.pen의 CTA 기준 높이
  static const double _height = 51;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        minimumSize: const Size.fromHeight(_height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.ctaButtonRadius),
        ),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
