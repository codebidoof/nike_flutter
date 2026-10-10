import 'package:flutter/material.dart';

import '../../core/designsystem/app_colors.dart';

class NewSection extends StatelessWidget {
  const NewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What's new", style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 10),
          Text(
            "나이키 최신 상품",
            style: Theme.of(context).textTheme.titleLarge
                ?.copyWith(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}
