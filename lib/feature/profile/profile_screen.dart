import 'package:flutter/material.dart';
import 'package:nike_flutter/feature/profile/widget/menu_section.dart';
import 'package:nike_flutter/feature/profile/widget/profile_divider.dart';
import 'package:nike_flutter/feature/profile/widget/profile_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 71),
          ProfileSection(),
          SizedBox(height: 42),
          MenuSection(),
          SizedBox(height: 24,),
          ProfileDivider(),
        ],
      ),
    );
  }
}
