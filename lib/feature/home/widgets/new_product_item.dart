import 'package:flutter/material.dart';

class NewProductItem extends StatelessWidget {
  const NewProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/nike_air_force_1_07.png',
          width: 314,
          height: 314,
          fit: .cover,
        ),
        SizedBox(height: 20),
        Text("Nike Air Force 1 '07", style: theme.textTheme.titleMedium),
        SizedBox(height: 16),
        Text("US\$100", style: theme.textTheme.bodySmall),
      ],
    );
  }
}
