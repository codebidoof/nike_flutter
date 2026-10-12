import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';
import 'package:nike_flutter/core/design/type/app_typography.dart';
import 'package:nike_flutter/feature/profile/widget/menu_model.dart';

import 'menu_item.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key, this.onTap});

  final ValueChanged<MenuModel>? onTap;
  static const menus = MenuModel.values;

  // design.pen의 navigate button 기준: 아이콘-라벨 간격 10, 구분선 1x31
  static const double _iconLabelGap = 10;
  static const double _dividerWidth = 1;
  static const double _dividerHeight = 31;

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;
    final text = context.appText;

    return Row(
      children: [
        for (final (index, menu) in menus.indexed) ...[
          if (index > 0)
            SizedBox(
              width: _dividerWidth,
              height: _dividerHeight,
              child: ColoredBox(color: color.borderSubtle),
            ),
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => onTap?.call(menu),
              child: MenuItem(
                iconLabelGap: _iconLabelGap,
                menu: menu,
                text: text,
                color: color,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
