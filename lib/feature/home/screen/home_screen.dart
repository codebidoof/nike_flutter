import 'package:flutter/material.dart';
import 'package:nike_flutter/feature/home/new_section.dart';
import 'package:nike_flutter/feature/home/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          bottom: 220,
          left: 17,
          right: 17,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopSection(),
            SizedBox(height: 44),
            Image.asset("assets/images/home_banner.png"),
            SizedBox(height: 41),
            NewSection(),
          ],
        ),
      ),
    );
  }
}
