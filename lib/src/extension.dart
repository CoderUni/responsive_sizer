part of responsive_sizer;

extension DeviceExt on num {

  // https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Values_and_units
  // Absolute length units

  double get cm => this * 37.8;
  double get mm => this * 3.78;
  double get Q => this * 0.945;
  double get inches => this * 96;
  double get pc => this * 16;
  double get pt => this * inches/72;
  double get px => this.toDouble();


  // https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Values_and_units
  // Relative length units

  /*double get em => ;
  double get ex => ;
  double get ch => ;
  double get rem => ;
  double get lh => ;*/
  double get vmin => this * min(Device.height, Device.width) / 100;
  double get vmax => this * max(Device.height, Device.width) / 100;

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

  /// Calculates the material dp (Pixel Density)
  /// (https://material.io/design/layout/pixel-density.html#pixel-density-on-android))
  double get dp =>
      this * (w * 160) / Device.pixelRatio;
}
