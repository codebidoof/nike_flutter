import '../color/app_colors.dart';
import '../tokens/color_primitives.dart';

/// 다크 테마 색상.
///
/// W1에서는 light와 동일한 값으로 유지. 다크 토큰 분리는 추후 진행.
class DarkTheme extends AppColors {
  const DarkTheme({
    super.textPrimary = ColorPrimitives.black,
    super.textSecondary = ColorPrimitives.gray500,
    super.textInverse = ColorPrimitives.white,
    super.textHighlight = ColorPrimitives.orange500,
    super.bgDefault = ColorPrimitives.white,
    super.bgSubtle = ColorPrimitives.gray50,
    super.bgPlaceholder = ColorPrimitives.gray250,
    super.bgInverse = ColorPrimitives.black,
    super.borderDefault = ColorPrimitives.gray200,
    super.borderStrong = ColorPrimitives.black,
    super.borderSubtle = ColorPrimitives.gray300,
    super.iconPrimary = ColorPrimitives.black,
    super.iconSystem = ColorPrimitives.systemGray,
    super.iconWishActive = ColorPrimitives.red500,
    super.indicatorTrack = ColorPrimitives.gray300,
    super.indicatorActive = ColorPrimitives.gray700,
    super.shadow = ColorPrimitives.shadow,
  });
}
