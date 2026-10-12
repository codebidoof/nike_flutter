import 'package:flutter/material.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';

class FollowingSection extends StatelessWidget {
  const FollowingSection({super.key, this.count = 0, this.onEdit});

  final int count;
  final VoidCallback? onEdit;

  // design.pen의 following 기준: 좌우 24, 위 28
  static const double _horizontalPadding = 24;

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;
    final text = context.appText;

    return Padding(
      padding: const EdgeInsets.only(
        left: _horizontalPadding,
        right: _horizontalPadding,
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            '팔로잉 ($count)',
            style: text.bodyMMedium.copyWith(color: color.textPrimary),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onEdit,
            child: Text(
              '편집',
              style: text.caption.copyWith(color: color.textSecondary),
            ),
          ),
        ],
      ),
    );
  }
}
