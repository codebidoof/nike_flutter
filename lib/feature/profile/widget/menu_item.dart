import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/color/app_colors.dart';
import '../../../core/design/type/app_typography.dart';
import 'menu_model.dart';

class MenuItem extends StatelessWidget {
  const new({
    super.key,
    required this._iconLabelGap,
    required this.menu,
    required this.text,
    required this.color,
  });

  final double _iconLabelGap;
  final MenuModel menu;
  final AppTypography text;
  final AppColors color;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: _iconLabelGap,
      children: [
        SvgPicture.asset(menu.iconPath),
        Text(
          menu.label,
          style: text.caption.copyWith(color: color.textPrimary),
        ),
      ],
    );
  }
}
