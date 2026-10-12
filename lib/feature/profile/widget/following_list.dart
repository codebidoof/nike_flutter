import 'package:flutter/material.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';

class FollowingList extends StatelessWidget {
  const FollowingList({super.key, this.itemCount = 8});

  final int itemCount;

  // design.pen의 following 기준: 아이템 107x106, 간격 6, 좌우 24
  static const double _itemWidth = 107;
  static const double _itemHeight = 106;
  static const double _itemGap = 6;
  static const double _horizontalPadding = 24;

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;

    return SizedBox(
      height: _itemHeight,
      child: ListView.separated(
        scrollDirection: .horizontal,
        padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
        itemCount: itemCount,
        separatorBuilder: (context, index) => const SizedBox(width: _itemGap),
        // 실제 데이터 연동 전까지는 플레이스홀더 박스로 채운다
        itemBuilder: (context, index) => SizedBox(
          width: _itemWidth,
          child: ColoredBox(color: color.bgPlaceholder),
        ),
      ),
    );
  }
}
