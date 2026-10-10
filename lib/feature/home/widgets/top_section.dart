import 'package:flutter/material.dart';
import 'package:nike_flutter/core/designsystem/app_colors.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Discover", style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: 10),
          Text(
            "9월 4일 목요일",
            style: Theme.of(context).textTheme.titleSmall
                ?.copyWith(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}
