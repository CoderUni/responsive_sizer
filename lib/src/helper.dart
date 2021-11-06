part of responsive_sizer;

/// Type of Device
///
/// This can be android, ios, fuchsia, web, or desktop (windows, mac, linux)
enum DeviceType { android, ios, fuchsia, web, windows, mac, linux }

/// Type of Screen
///
/// This can either be mobile or tablet
enum ScreenType { watch, mobile, tablet, desktop }

class Device {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  /// Type of Device
  static late DeviceType deviceType;

  /// Type of Screen
  static late ScreenType screenType;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  static late Map<ScreenType, double> screenTypeSizeMap = {
    ScreenType.watch: 300,
    ScreenType.mobile: 600,
    ScreenType.tablet: 950,
  };

  /// Device's Aspect Ratio
  static double get aspectRatio {
    return WidgetsBinding.instance?.window.physicalSize.aspectRatio ?? 1;
  }

  /// Devices' Pixel Ratio
  static double get pixelRatio {
    return WidgetsBinding.instance?.window.devicePixelRatio ?? 1;
  }

  ///set screenTypeSizeMap
  static void setScreenTypeSize(Map<ScreenType, double> sizeMap) {
    screenTypeSizeMap = sizeMap;
  }

  /// Sets the Screen's size and Device's `Orientation`,
  /// `BoxConstraints`, `Height`, and `Width`
  static void setScreenSize(BoxConstraints constraints, Orientation currentOrientation) {
    // Sets boxconstraints and orientation
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Sets screen width and height
    width = boxConstraints.maxWidth;
    height = boxConstraints.maxHeight;

    // Sets DeviceType
    if (kIsWeb) {
      deviceType = DeviceType.web;
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          deviceType = DeviceType.android;
          break;
        case TargetPlatform.iOS:
          deviceType = DeviceType.ios;
          break;
        case TargetPlatform.windows:
          deviceType = DeviceType.windows;
          break;
        case TargetPlatform.macOS:
          deviceType = DeviceType.mac;
          break;
        case TargetPlatform.linux:
          deviceType = DeviceType.linux;
          break;
        case TargetPlatform.fuchsia:
          deviceType = DeviceType.fuchsia;
          break;
      }
    }

    // Sets ScreenType
    var watchSize = screenTypeSizeMap[ScreenType.watch] ?? 300;
    var mobileSize = screenTypeSizeMap[ScreenType.mobile] ?? 600;
    var tabletSize = screenTypeSizeMap[ScreenType.tablet] ?? 950;
    if ((orientation == Orientation.portrait && width < watchSize)
        || (orientation == Orientation.landscape && height < watchSize)) {
      screenType = ScreenType.watch;
    } else if ((orientation == Orientation.portrait && width < mobileSize)
        || (orientation == Orientation.landscape && height < mobileSize)) {
      screenType = ScreenType.mobile;
    }else if ((orientation == Orientation.portrait && width < tabletSize)
        || (orientation == Orientation.landscape && height < tabletSize)) {
      screenType = ScreenType.tablet;
    } else {
      screenType = ScreenType.desktop;
    }
  }
}

class Adaptive {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  static double h(num height) => height.h;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's width
  static double w(num width) => width.w;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  static double sp(num scalablePixel) => scalablePixel.sp;
}
