part of responsive_sizer;

/// Provides `Context`, `Orientation`, and `ScreenType` parameters to the builder function
typedef ResponsiveBuilderType = Widget Function(
  BuildContext,
  Orientation,
  ScreenType,
);

/// A widget that gets the device's details like orientation and constraints
///
/// Usage: Wrap MaterialApp with this widget
class ResponsiveSizer extends StatelessWidget {
  const ResponsiveSizer({
    Key? key,
    required this.builder,
    this.maxMobileWidth = 599,
  }) : super(key: key);

  /// Builds the widget whenever the orientation changes
  final ResponsiveBuilderType builder;

  /// This is the breakpoint used to determine whether the device is
  /// a mobile device or a tablet. If the `MediaQuery`'s width is
  /// less than `maxMobileWidth`, the device is in a mobile device
  final double maxMobileWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        Device.setScreenSize(context, constraints, orientation, maxMobileWidth);
        return builder(context, orientation, Device.screenType);
      });
    });
  }
}
