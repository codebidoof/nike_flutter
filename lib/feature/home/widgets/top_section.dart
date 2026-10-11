import 'package:flutter/material.dart';
import 'package:nike_flutter/core/designsystem/color/app_colors.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Discover", style: context.theme.textTheme.headlineMedium),
          SizedBox(height: 10),
          Text(
            "9월 4일 목요일",
            style: context.theme.textTheme.titleSmall?.copyWith(
              color: context.appColor.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
