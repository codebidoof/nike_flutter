import 'package:flutter/material.dart';
import 'package:nike_flutter/feature/profile/widget/following_list.dart';
import 'package:nike_flutter/feature/profile/widget/following_section.dart';
import 'package:nike_flutter/feature/profile/widget/member_benefit_section.dart';
import 'package:nike_flutter/feature/profile/widget/menu_section.dart';
import 'package:nike_flutter/feature/profile/widget/profile_divider.dart';
import 'package:nike_flutter/feature/profile/widget/profile_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.only(right: 2, left: 2, bottom: 11),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 71),
          ProfileSection(),
          SizedBox(height: 42),
          MenuSection(),
          SizedBox(height: 24,),
          ProfileDivider(),
          MemberBenefitSection(),
          ProfileDivider(),
          SizedBox(height: 28,),
          FollowingSection(),
          SizedBox(height: 18,),
          FollowingList()
        ],
      ),
    );
  }
}
