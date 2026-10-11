import '../color/app_colors.dart';
import '../tokens/color_primitives.dart';

/// 라이트 테마 색상.
class LightTheme extends AppColors {
  const LightTheme({
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
