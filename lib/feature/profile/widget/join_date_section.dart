import 'package:flutter/material.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';

class JoinDateSection extends StatelessWidget {
  const JoinDateSection({super.key, required this.joinDate});

  /// 표시할 가입일 문자열 (예: '2025년 9월')
  final String joinDate;

  // design.pen의 join member date 기준: 높이 47.2를 48로 맞춘 상하 여백
  static const double _verticalPadding = 18;

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;
    final text = context.appText;

    return SizedBox(
      width: double.infinity,
      child: ColoredBox(
        color: color.bgSubtle,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: _verticalPadding),
          child: Text(
            '회원 가입일: $joinDate',
            textAlign: .center,
            style: text.caption.copyWith(color: color.textSecondary),
          ),
        ),
      ),
    );
  }
}
