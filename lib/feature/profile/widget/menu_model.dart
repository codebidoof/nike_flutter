enum MenuModel {
  order(iconPath: 'assets/svg/ic_order.svg', label: '주문'),
  pass(iconPath: 'assets/svg/ic_pass.svg', label: '패스'),
  event(iconPath: 'assets/svg/ic_event.svg', label: '이벤트'),
  setting(iconPath: 'assets/svg/ic_setting.svg', label: '설정');

  const MenuModel({required this.iconPath, required this.label});

  final String iconPath;
  final String label;
}
