part of responsive_sizer;

/// Type of Screen
///
/// This can be either mobile or tablet
enum ScreenType { mobile, tablet }

class Device {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  /// Type of Device
  ///
  /// This can either be mobile or tablet
  static late ScreenType screenType;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  /// Sets the Screen's size and Device's Orientation,
  /// BoxConstraints, Height, and Width
  static void setScreenSize(
      BoxConstraints boxConstraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth;
      height = boxConstraints.maxHeight;
    } else {
      width = boxConstraints.maxHeight;
      height = boxConstraints.maxWidth;
    }
    boxConstraints = boxConstraints;
    orientation = orientation;
    screenType = width < 600 ? ScreenType.mobile : ScreenType.tablet;
  }
}
