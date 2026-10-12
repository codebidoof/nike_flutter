import 'package:flutter/material.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';
import 'package:nike_flutter/core/design/widgets/outlined_cta_button.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;
    final text = context.appText;

    return Column(
      crossAxisAlignment: .center,
      children: [
        const SizedBox(
          width: 84,
          height: 84,
          // TODO: 추후 네트워크 이미지로 변경 예정
          child: CircleAvatar(radius: 50, child: Icon(Icons.person)),
        ),
        const SizedBox(height: 30),
        Text("닉네임", style: text.titleM.copyWith(color: color.textPrimary)),
        const SizedBox(height: 30),
        OutlinedCtaButton(expand: false, label: "프로필 수정", onPressed: () {}),
      ],
    );
  }
}
