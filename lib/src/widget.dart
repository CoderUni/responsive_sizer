part of responsive_sizer;

/// Provides `Context`, `Orientation`, and `ScreenType` parameters to the builder function
typedef ResponsiveBuilderType = Widget Function(
  BuildContext,
  Orientation,
  SizerScreenType,
);

/// A widget that gets the device's details like orientation and constraints
///
/// Usage: Wrap MaterialApp with this widget
class ResponsiveSizer extends StatelessWidget {
  const ResponsiveSizer({Key? key, required this.builder}) : super(key: key);

  /// Builds the widget whenever the orientation changes
  final ResponsiveBuilderType builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerDevice.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizerDevice.screenType);
      });
    });
  }
}
