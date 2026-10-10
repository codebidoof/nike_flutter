import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/designsystem/app_spacing.dart';
import 'bottom_bar_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  final int currentIndex;
  final ValueChanged<int> onTap;
  static const tabs = BottomBarItem.values;

  // design.pen의 Navigation bar 기준: 높이 61, 상하 패딩 8
  static const double _height = 61;
  static const double _verticalPadding = 8;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ColoredBox(
      color: theme.colorScheme.surface,
      child: SizedBox(
        height: _height,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: _verticalPadding),
          child: Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            spacing: AppSpacing.navItemGap,
            children: [
              for (final (index, item) in tabs.indexed)
                GestureDetector(
                  onTap: () => onTap(index),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: AppSpacing.iconLabelGap,
                    children: [
                      SvgPicture.asset(item.iconPath),
                      Text(item.label, style: theme.textTheme.labelSmall),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
