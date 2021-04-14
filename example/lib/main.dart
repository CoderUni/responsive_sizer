import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Responsive Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home(),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: Adaptive.h(12.5), // or 12.5.h
            width: 50.w, // or Adaptive.w(50)
            color: Colors.black,
          ),
          Text(
            "This text is responsive",
            style: TextStyle(fontSize: 12.sp), // or Adaptive.sp(12)
          ),
          Device.orientation == Orientation.portrait
              ? Text("My Orientation is Portrait")
              : Text("My Orientation is Landscape"),
          Device.screenType == ScreenType.tablet
              ? Text("My Screen's Type is a Tablet")
              : Text("My Screen's Type is a Phone")
        ],
      ),
    );
  }
}
