import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/designsystem/color/app_colors.dart';
import '../core/designsystem/app_spacing.dart';
import 'bottom_bar_item.dart';

class BottomBarChild extends StatelessWidget {
  const BottomBarChild({
    super.key,
    required this.onTap,
    required this.index,
    required this.isSelected,
    required this.verticalPadding,
    required this.hitSlop,
    required this.item,
    required this.theme,
  });

  final ValueChanged<int> onTap;
  final int index;
  final bool isSelected;
  final double verticalPadding;
  final double hitSlop;
  final BottomBarItem item;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    // 선택된 탭은 라벨만 Bold + textPrimary, 아이콘은 그대로
    final colors = context.appColor;
    final labelStyle = isSelected
        ? theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: colors.textPrimary,
          )
        : theme.textTheme.labelSmall?.copyWith(color: colors.textSecondary);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onTap(index),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: hitSlop,
        ),
        child: Column(
          spacing: AppSpacing.iconLabelGap,
          children: [
            SvgPicture.asset(item.iconPath),
            Text(item.label, style: labelStyle),
          ],
        ),
      ),
    );
  }
}
