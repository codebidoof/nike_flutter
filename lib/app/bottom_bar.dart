import 'package:flutter/material.dart';

import '../core/designsystem/color/app_colors.dart';
import 'bottom_bar_child.dart';
import 'bottom_bar_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  final int currentIndex;
  final ValueChanged<int> onTap;
  static const tabs = BottomBarItem.values;

  // design.pen의 Navigation bar 기준: 높이 61, 상하 패딩 8, 좌우 여백 34
  static const double _height = 61;
  static const double _verticalPadding = 8;
  static const double _horizontalPadding = 34;

  // 아이템 좌우로 넓히는 터치 영역. 바 좌우 패딩에서 같은 값을 빼서 보이는 배치는 그대로 둔다
  static const double _hitSlop = 10;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ColoredBox(
      color: context.colors.bgDefault,
      child: SizedBox(
        height: _height,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: _horizontalPadding - _hitSlop,
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .stretch,
            children: [
              for (final (index, item) in tabs.indexed)
                BottomBarChild(
                  onTap: onTap,
                  index: index,
                  isSelected: index == currentIndex,
                  verticalPadding: _verticalPadding,
                  hitSlop: _hitSlop,
                  item: item,
                  theme: theme,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
