import 'package:flutter/material.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';
import 'package:nike_flutter/core/design/widgets/product_item.dart';

class BuyScreen extends StatelessWidget {
  const BuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 96),
                child: TabBar(
                  isScrollable: true,
                  labelStyle: context.appText.tab,
                  labelColor: context.appColor.textPrimary,
                  tabAlignment: .start,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: context.appColor.borderStrong,
                  dividerColor: context.appColor.borderDefault,
                  overlayColor: WidgetStatePropertyAll(
                    context.appColor.borderDefault,
                  ),
                  tabs: [
                    Tab(text: '전체', height: 56),
                    Tab(text: "Tops & T-Shirts", height: 56),
                    Tab(text: 'sale', height: 56),
                  ],
                ),
              ),
              Expanded(child: ProductGrid())
            ],
          ),
        ),
      ),
    );
  }
}

// 상품 그리드뷰
class ProductGrid extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // 셀 너비 상한. 폭이 넓어지면 이미지를 키우지 않고 열을 늘린다
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 6,
        // design.pen의 그리드 행 간격 기준 높이
        mainAxisExtent: 356,
      ),
      itemCount: _products.length,
      itemBuilder: (context, index) {
        final product = _products[index];

        return ProductItem(
          imagePath: product.imagePath,
          name: product.name,
          description: product.description,
          colors: product.colors,
          price: product.price,
          isBestSeller: product.isBestSeller,
          isWished: product.isWished,
        );
      },
    );
  }
}

// 데이터 계층이 생기기 전까지 쓰는 더미 상품 목록
const _products = [
  (
    imagePath: 'assets/images/nike_everyday_plus_cushioned.png',
    name: 'Nike Everyday Plus Cushioned',
    description: 'Training Ankle Socks (6 Pairs)',
    colors: '5 Colours',
    price: 'US\$10',
    isBestSeller: false,
    isWished: true,
  ),
  (
    imagePath: 'assets/images/nike_elite_crew.png',
    name: 'Nike Elite Crew',
    description: 'Basketball Socks',
    colors: '7 Colours',
    price: 'US\$16',
    isBestSeller: false,
    isWished: false,
  ),
  (
    imagePath: 'assets/images/nike_air_force_1_07.png',
    name: "Nike Air Force 1 '07",
    description: "Women's Shoes",
    colors: '5 Colours',
    price: 'US\$115',
    isBestSeller: true,
    isWished: false,
  ),
  (
    imagePath: 'assets/images/nike_air_force_1_07_essentials.png',
    name: "Nike Air Force 1 '07 Essentials",
    description: "Men's Shoes",
    colors: '2 Colours',
    price: 'US\$115',
    isBestSeller: true,
    isWished: false,
  ),
];
