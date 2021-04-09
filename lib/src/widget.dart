part of responsive_sizer;

class ResponsiveSizer extends StatefulWidget {
  final Widget child;
  const ResponsiveSizer({Key? key, required this.child}) : super(key: key);
  @override
  _ResponsiveSizerState createState() => _ResponsiveSizerState();
}

class _ResponsiveSizerState extends State<ResponsiveSizer> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        Device.setScreenSize(constraints, orientation);
        return widget.child;
      });
    });
  }
}
