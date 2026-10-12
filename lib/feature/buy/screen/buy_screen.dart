import 'package:flutter/material.dart';
import 'package:nike_flutter/core/design/color/app_colors.dart';

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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => Placeholder(),
    );
  }
}
