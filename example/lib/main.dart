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
    late final String _deviceType;

    switch (Device.deviceType) {
      case DeviceType.android:
        _deviceType = 'android';
        break;
      case DeviceType.ios:
        _deviceType = 'ios';
        break;
      case DeviceType.fuschia:
        _deviceType = 'fuschia';
        break;
      case DeviceType.web:
        _deviceType = 'web';
        break;
      case DeviceType.windows:
        _deviceType = 'windows';
        break;
      case DeviceType.mac:
        _deviceType = 'mac';
        break;
      case DeviceType.linux:
        _deviceType = 'linux';
        break;
    }

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
              : Text("My Screen's Type is a Phone"),
          Text("I'm using a/an $_deviceType device"),
        ],
      ),
    );
  }
}
