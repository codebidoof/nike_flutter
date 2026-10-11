enum BottomBarItem {
  home(iconPath: 'assets/svg/ic_nav_home.svg', label: '홈'),
  buy(iconPath: 'assets/svg/ic_nav_shop.svg', label: '구매하기'),
  wish(iconPath: 'assets/svg/ic_nav_wishlist.svg', label: '위시리스트'),
  bag(iconPath: 'assets/svg/ic_nav_bag.svg', label: '장바구니'),
  profile(iconPath: 'assets/svg/ic_nav_profile.svg', label: '프로필');

  const BottomBarItem({required this.iconPath, required this.label});

  final String iconPath;
  final String label;
}
