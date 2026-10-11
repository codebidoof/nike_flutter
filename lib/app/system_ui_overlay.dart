import 'package:flutter/material.dart';
import 'package:flutter/services.dart' hide SystemUiOverlay;

/// 상태바와 내비게이션 바 영역을 [surface] 색으로 맞춰주는 위젯.
///
/// 시스템 바 자체는 투명하게 두고, 바 뒤 영역([viewPadding]의 bottom 높이)에
/// [surface] 색 띠를 직접 그린다. Android 15(API 35)+에서는 시스템 바 색상 지정이
/// 무시되므로, 모든 버전에서 동일하게 보이도록 이 방식을 쓴다.
///
/// [MaterialApp]이 빌드마다 기본 [SystemUiOverlayStyle]을 덮어쓰기 때문에
/// `MaterialApp.builder`에서 앱 전체를 감싸는 용도로 사용한다.
///
/// ```dart
/// MaterialApp.router(
///   builder: (context, child) => SystemUiOverlay(
///     iconBrightness: Brightness.dark,
///     viewPadding: MediaQuery.viewPaddingOf(context),
///     surface: context.appColor.bgDefault,
///     child: child!,
///   ),
/// );
/// ```
class SystemUiOverlay extends StatelessWidget {
  const SystemUiOverlay({
    super.key,
    required this.iconBrightness,
    required this.viewPadding,
    required this.surface,
    required this.child,
  });

  /// 상태바와 내비게이션 바 아이콘의 밝기. [surface]가 밝으면 [Brightness.dark]를 준다.
  final Brightness iconBrightness;

  /// 시스템 바가 차지하는 영역. top은 상태바, bottom은 내비게이션 바 높이로 쓰인다.
  final EdgeInsets viewPadding;

  /// 시스템 바 뒤에 칠할 색상.
  final Color surface;

  /// 시스템 바 띠 아래에 그려질 앱 콘텐츠.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: iconBrightness,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: iconBrightness,
        systemNavigationBarContrastEnforced: false,
      ),
      // Android 15+는 시스템 바 색상 지정이 무시되므로 바 뒤에 surface를 직접 그린다
      child: Stack(
        children: [
          child,
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: viewPadding.top,
            child: ColoredBox(color: Colors.transparent),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: viewPadding.bottom,
            child: ColoredBox(color: surface),
          ),
        ],
      ),
    );
  }
}
