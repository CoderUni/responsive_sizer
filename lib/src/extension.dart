part of responsive_sizer;

extension DeviceExt on num {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get h => this * Device.height / 100;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's width
  double get w => this * Device.width / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's pixel density
  double get sp =>
      this *
      (((h + w) + (Device.pixelRatio * Device.aspectRatio)) / 2.08) /
      100;
}
