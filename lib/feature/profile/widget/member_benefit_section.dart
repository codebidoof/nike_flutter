import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';

class MemberBenefitSection extends StatelessWidget {
  const MemberBenefitSection({super.key, this.availableCount = 0, this.onTap});

  final int availableCount;
  final VoidCallback? onTap;

  // design.pen의 section 기준: 좌우 24, 상하 32, 제목-부제 간격 6, 텍스트-화살표 간격 16
  static const double _horizontalPadding = 24;
  static const double _verticalPadding = 32;
  static const double _titleGap = 6;
  static const double _caretGap = 16;

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;
    final text = context.appText;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: _horizontalPadding,
          vertical: _verticalPadding,
        ),
        child: Row(
          spacing: _caretGap,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                spacing: _titleGap,
                children: [
                  Text(
                    '나이키 멤버 혜택',
                    style: text.button.copyWith(color: color.textPrimary),
                  ),
                  Text(
                    '$availableCount개 사용 가능',
                    style: text.caption.copyWith(color: color.textSecondary),
                  ),
                ],
              ),
            ),
            SvgPicture.asset('assets/svg/ic_caret_right.svg'),
          ],
        ),
      ),
    );
  }
}
