# flutter_sizer

Flutter_sizer helps implement a reponsive layout. Inspired by ![sizer](https://github.com/TechnoUrmish/Sizer)

![Alt Text](https://github.com/TechnoUrmish/Sizer/blob/master/example/images/img_ss_with_lib.png)

![Alt Text](https://github.com/TechnoUrmish/Sizer/blob/master/example/images/img_ss_without_lib.png)


## Installation ⬇️
Add to pubspec.yaml.
```
dependencies:
  ...
  flutter_sizer: ^1.0.0
```

## Parameters ⚙️ 

* `.h` - (double) for widget height
* `.w` - (double) for widget width
* `.sp` - (double) for font size
* `SizerUtil.orientation` - for screen orientation portrait or landscape
* `SizerUtil.deviceType` - for device type mobile or tablet

## How to use 💻

Add the following imports to your Dart code: 
```
import 'package:flutter_sizer/flutter_sizer.dart';
```


* First need to Initialize SizerUtil.init() method inside main.dart.
* In main.dart must have to use LayoutBuilder and OrientationBuilder. 
* See below explain for more details.


```
import 'package:flutter/material.dart';
import 'login_screen.dart'; 
import 'package:flutter_sizer/flutter_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(                           //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(                  //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation);  //initialize SizerUtil
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Sizer',
              theme: ThemeData.light(),
              home: LoginScreen(),
            );
          },
        );
      },
    );
  }
}
```

You can use it like this: 

You need to import flutter_sizer package in order to access number.h or number.w
```
import 'package:flutter_sizer/flutter_sizer.dart';
```

**Widget Size** 🕓
```
    Container(
      width: 20.w,    // This will take 20% of the screen's width
      height: 30.5.h     // This will take 30.5% of the screen's height
    )
```

**Font size** 🆎
```
    Text(
      'Sizer', style: TextStyle(fontSize: 15.sp),
    );
```

**Orientation** 🔄

If you want to support both portrait and landscape orientations
```
appBar() {
    return SizerUtil.orientation == Orientation.portrait
        ? Container(
            width: 100.0.w,
            height: 20.0.h,
          )                     //for portrait screen
        : Container(
            width: 100.0.w,
            height: 12.0.h,
          );                    //for landscape screen
  }
```

**DeviceType** 📱

If you want the same layout to look different in tablet and mobile then use ``SizerUtil.getDeviceType`` method
```
SizerUtil.getDeviceType
```

You can use it like this:
```
 appBar() {
    return SizerUtil.deviceType == DeviceScreenType.Tablet
        ? Container(
            width: 100.0.w,
            height: 20.0.h,
          )                     //for Tablet
        : Container(
            width: 100.0.w,
            height: 12.0.h,
          );                    //for Mobile
  }
```

## Community Support

If you have any suggestions or issues, feel free to open an [issue](https://github.com/CoderUni/flutter_sizer/issues)
If you would like to contribute, feel free to create a [PR](https://github.com/CoderUni/flutter_sizer/pulls)# responsive_sizer
