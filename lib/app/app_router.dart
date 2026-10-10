import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_flutter/app/bottom_bar.dart';
import 'package:nike_flutter/feature/buy/buy_screen.dart';
import 'package:nike_flutter/feature/profile/profile_screen.dart';

import '../feature/bag/bag_screen.dart';
import '../feature/detail/product_detail_screen.dart';
import '../feature/home/screen/home_screen.dart';
import '../feature/wish/wish_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    // 탭마다 독립된 네비게이션 스택을 유지 (탭 전환 시 상태 보존)
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
          child: Scaffold(
            body: navigationShell,
            bottomNavigationBar: BottomBar(
              currentIndex: navigationShell.currentIndex,
              onTap: (index) => navigationShell.goBranch(
                index,
                initialLocation: index == navigationShell.currentIndex,
              ),
            ),
          ),
        );
      },
      branches: [
        // 첫 번째 탭 (Home)
        StatefulShellBranch(
          routes: [
            GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
          ],
        ),
        // 두 번째 탭 (Buy)
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/buy',
              builder: (context, state) => const BuyScreen(),
            ),
          ],
        ),
        // 세 번째 탭 (Wish)
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/wish',
              builder: (context, state) => const WishScreen(),
            ),
          ],
        ),
        // 네 번째 탭 (Bag)
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/bag',
              builder: (context, state) => const BagScreen(),
            ),
          ],
        ),
        // 다섯 번째 탭 (Profile)
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    // 상품 상세
    GoRoute(
      path: '/product/:id',
      builder: (context, state) => const ProductDetailScreen(),
    ),
  ],
);
