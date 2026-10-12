import 'package:flutter/material.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({super.key});

  // design.pen의 divider 기준 두께 (7.55를 반올림)
  static const double _height = 8;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: _height,
      child: ColoredBox(color: context.appColor.bgSubtle),
    );
  }
}
