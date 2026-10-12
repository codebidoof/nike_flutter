import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/color/app_colors.dart';
import '../../core/design/theme/app_theme.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;
    final text = context.appText;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.bgDefault,
        foregroundColor: color.bgInverse,
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: SvgPicture.asset('assets/svg/ic_back.svg'),
        ),
        title: Align(
          alignment: .center,
          child: Text(
            'Product_name',
            style: text.titleM.copyWith(color: color.textPrimary),
          ),
        ),
        actions: [
          IconButton(
            onPressed: onPressed,
            icon: SvgPicture.asset('assets/svg/ic_glass.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 19,
          right: 19,
          top: 20,
          bottom: 44,
        ),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Image.asset(
              'assets/images/nike_everyday_plus_cushioned.png',
              width: .infinity,
              fit: .fitWidth,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 24)),

          ],
        ),
      ),
    );
  }
}

// design.pen의 화면 프레임 기준 크기
const Size productDetailScreenPreviewSize = Size(402, 874);

// context.appColor / context.appText가 테마 확장을 요구하므로 AppTheme으로 감싼다.
// 배경은 Scaffold가 scaffoldBackgroundColor로 직접 칠한다.
Widget productDetailScreenPreviewWrapper(Widget child) => Builder(
  builder: (context) => Theme(
    data: MediaQuery.platformBrightnessOf(context) == Brightness.dark
        ? AppTheme.dark
        : AppTheme.light,
    child: child,
  ),
);

@Preview(
  group: 'ProductDetail',
  name: 'ProductDetailScreen',
  size: productDetailScreenPreviewSize,
  wrapper: productDetailScreenPreviewWrapper,
)
Widget productDetailScreenPreview() => ProductDetailScreen(onPressed: () {});
