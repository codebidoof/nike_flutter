import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/designsystem/cta_button.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              SvgPicture.asset('assets/svg/ic_bag_circle.svg'),
              SizedBox(height: 27),
              Text('장바구니가 비어 있습니다.\n제품을 추가하면 여기에 표시됩니다.', textAlign: .center),
            ],
          ),
        ),
        Align(
          alignment: .bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 40, bottom: 22),
            child: CtaButton(
              label: '주문하기',
              onPressed: () => context.go('/buy'),
            ),
          ),
        ),
      ],
    );
  }
}
