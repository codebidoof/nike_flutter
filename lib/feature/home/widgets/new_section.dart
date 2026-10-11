import 'package:flutter/material.dart';

import '../../../core/designsystem/color/app_colors.dart';
import 'new_product_item.dart';

class NewSection extends StatelessWidget {
  const NewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What's new", style: context.theme.textTheme.titleMedium),
          SizedBox(height: 10),
          Text(
            "나이키 최신 상품",
            style: context.theme.textTheme.titleLarge?.copyWith(
              color: context.appColor.textSecondary,
            ),
          ),
          SizedBox(height: 22),
        ],
      ),
    );
  }
}
