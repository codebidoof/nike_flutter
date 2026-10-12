import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_flutter/app/bottom_bar.dart';
import 'package:nike_flutter/feature/buy/screen/buy_screen.dart';
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
        // 탭 전환은 뒤로가기 스택에 쌓이지 않으므로, 홈이 아닌 탭에서는 종료 대신 홈 탭으로 보낸다
        return PopScope(
          canPop: navigationShell.currentIndex == 0,
          onPopInvokedWithResult: (didPop, result) {
            if (!didPop) navigationShell.goBranch(0);
          },
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewPadding.bottom,
            ),
            child: Scaffold(
              body: navigationShell,
              bottomNavigationBar: BottomBar(
                currentIndex: navigationShell.currentIndex,
                // 현재 탭을 다시 누르면 해당 탭의 초기 경로로 돌아감.
                onTap: (index) => navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                ),
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
