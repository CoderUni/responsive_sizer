import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      child: MaterialApp(
        title: 'Responsive Sizer Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 12.5.h,
          width: 50.w,
          color: Colors.black,
        ),
        Text(
          "This text is responsive",
          style: TextStyle(fontSize: 12.sp),
        ),
        Device.orientation == Orientation.portrait
            ? Text("My Orientation is Portrait")
            : Text("My Orientation is Landscape"),
        Device.screenType == ScreenType.tablet
            ? Text("My Screen's Type is a Tablet")
            : Text("My Screen's Type is a Phone")
      ],
    );
  }
}
