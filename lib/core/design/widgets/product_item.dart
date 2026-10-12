import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

import '../color/app_colors.dart';
import '../theme/app_theme.dart';

/// 상품 그리드에 쓰는 상품 카드.
///
/// 가로는 부모가 허용하는 만큼 채우고 이미지는 정사각형으로 그린다.
/// [isBestSeller]가 true면 상품명 위에 BestSeller 라벨을 표시한다.
class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.colors,
    required this.price,
    this.isBestSeller = false,
    this.isWished = false,
    this.onTap,
    this.onWishTap,
  });

  /// `assets/images/` 아래의 에셋 경로
  final String imagePath;
  final String name;
  final String description;

  /// 색상 수 라벨 (예: `5 Colours`)
  final String colors;

  /// 통화 기호를 포함한 가격 라벨 (예: `US$115`)
  final String price;
  final bool isBestSeller;
  final bool isWished;

  final VoidCallback? onTap;
  final VoidCallback? onWishTap;

  // design.pen의 Product 기준 수치
  static const double _imageTextGap = 14;
  static const double _textHorizontalPadding = 14;
  static const double _textGap = 5;
  static const double _wishButtonInset = 12;
  static const double _wishButtonSize = 34;
  static const double _wishIconSize = 20;

  @override
  Widget build(BuildContext context) {
    final color = context.appColor;
    final text = context.appText;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Stack( // 하트 때문에 스택을 쓴다.
              fit: StackFit.expand,
              children: [
                Image.asset(imagePath, fit: .cover),
                Positioned(
                  top: _wishButtonInset,
                  right: _wishButtonInset,
                  child: GestureDetector(
                    onTap: onWishTap,
                    child: Container(
                      width: _wishButtonSize,
                      height: _wishButtonSize,
                      decoration: BoxDecoration(
                        color: color.bgDefault,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isWished ? Icons.favorite : Icons.favorite_border,
                        size: _wishIconSize,
                        color: isWished
                            ? color.iconWishActive
                            : color.iconPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: _imageTextGap),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: _textHorizontalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: _textGap,
              children: [
                if (isBestSeller)
                  Text(
                    'BestSeller',
                    style: text.bodyMMedium.copyWith(
                      color: color.textHighlight,
                    ),
                  ),
                Text(
                  name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: text.bodyMMedium.copyWith(color: color.textPrimary),
                ),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: text.bodyM.copyWith(color: color.textSecondary),
                ),
                Text(
                  colors,
                  style: text.bodyM.copyWith(color: color.textSecondary),
                ),
                Text(
                  price,
                  style: text.bodyMMedium.copyWith(color: color.textPrimary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// design.pen의 그리드 셀 기준 크기
const Size productItemPreviewSize = Size(184, 337);

// context.appColor / context.appText가 테마 확장을 요구하므로 AppTheme으로 감싼다.
// 프리뷰어의 밝기 전환을 따르고, 프리뷰어 배경과 겹치지 않게 bgDefault를 깐다.
Widget productItemPreviewWrapper(Widget child) => Builder(
  builder: (context) => Theme(
    data: MediaQuery.platformBrightnessOf(context) == Brightness.dark
        ? AppTheme.dark
        : AppTheme.light,
    child: Builder(
      builder: (context) =>
          ColoredBox(color: context.appColor.bgDefault, child: child),
    ),
  ),
);

@Preview(
  group: 'ProductItem',
  name: 'ProductItem',
  size: productItemPreviewSize,
  wrapper: productItemPreviewWrapper,
)
Widget productItemPreview() => const ProductItem(
  imagePath: 'assets/images/nike_elite_crew.png',
  name: 'Nike Elite Crew',
  description: 'Basketball Socks',
  colors: '7 Colours',
  price: 'US\$16',
);

@Preview(
  group: 'ProductItem',
  name: 'ProductItem - BestSeller · Wished',
  size: productItemPreviewSize,
  wrapper: productItemPreviewWrapper,
)
Widget productItemBestSellerPreview() => const ProductItem(
  imagePath: 'assets/images/nike_air_force_1_07.png',
  name: "Nike Air Force 1 '07",
  description: "Women's Shoes",
  colors: '5 Colours',
  price: 'US\$115',
  isBestSeller: true,
  isWished: true,
);
