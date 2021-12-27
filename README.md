# Responsive Sizer

Responsive Sizer helps implement a responsive layout by providing helper widgets and extensions. Responsive_sizer was built because the sizer package isn't being maintained. At the time of this writing, the sizer package is a complete copy paste of the `^2.0.1` version of this package.

![Responsive Image](https://github.com/CoderUni/responsive_sizer/blob/main/assets/img_ss_with_lib.png)

![Responsive Image](https://github.com/CoderUni/responsive_sizer/blob/main/assets/img_ss_without_lib.png)

# Content

- [Breaking Changes](#breaking-changes)
- [Installation](#Installation)
- [Usage](#Usage)
- [Parameters](#Parameters)
- [Take Note](#take-note)
- [Community Support](#community-support)

# Breaking Changes
* ResponsiveSizer should now wrap MaterialApp's child to work

# Installation
Add `responsive_sizer` to pubspec.yaml
```yaml
dependencies:
  responsive_sizer: ^3.0.5+1
```

# Usage

## Import the Package
```dart
import 'package:responsive_sizer/responsive_sizer.dart';
```

## Wrap MaterialApp's child with ResponsiveSizer widget
```dart
MaterialApp(
 home: ResponsiveSizer(
   builder: (context, orientation, screenType) {
     return const HomePage();
   },
 ),
);
```

## Widget Size
```dart
Container(
  width: Adaptive.w(20),    // This will take 20% of the screen's width
  height: 30.5.h     // This will take 30.5% of the screen's height
)
```

## Font size
```dart
Text(
  'Responsive Sizer', 
  style: TextStyle(fontSize: 15.sp),
)
```

## Orientation

If you want to support both portrait and landscape orientations
```dart
Device.orientation == Orientation.portrait
  ? Container(   // Widget for Portrait
      width: 100.w,
      height: 20.5.h,
   )
  : Container(   // Widget for Landscape
      width: 100.w,
      height: 12.5.h,
   )
```


## ScreenType

If you want the same layout to look different in tablet and mobile, use the ``Device.screenType`` method:

```dart
Device.screenType == ScreenType.tablet
  ? Container(   // Widget for Tablet
      width: 100.w,
      height: 20.5.h,
   )
  : Container(   // Widget for Mobile
      width: 100.w,
      height: 12.5.h,
   )
```
# Parameters
## ResponsiveSizer
* `maxMobileWidth` - Maximum width of a mobile device
(If the device's width is larger than this, it will be categorized as a tablet) - Default value: 599

## Extensions
* `Adaptive.h()` or `.h` - Returns a calculated height based on the device
* `Adaptive.w()` or `.w`- Returns a calculated width based on the device
* `Adaptive.sp()` or `.sp`- Returns a calculated sp based on the device
* `Device.boxConstraints` - Returns the Device's BoxConstraints
* `Device.orientation` - Returns the Screen Orientation (portrait or landscape)
* `Device.screenType` - Returns the Screen Type (mobile or tablet)
* `Device.aspectRatio` - Returns the Device's aspect ratio
* `Device.pixelRatio` - Returns the Device's pixel ratio

# Take Note

You need to import `responsive_sizer` package in order to access `number.h`, `number.w`, and `number.sp`

**Auto import in VSCode and Android Studio doesn't work for dart extension methods.** Typing `10.h` would not bring up auto import suggestion for this package

One workaround is to type `Device` so that the auto import suggestion would show up:
```dart
import 'package:responsive_sizer/responsive_sizer.dart';
```

# Community Support

If you have any suggestions or issues, feel free to open an [issue](https://github.com/CoderUni/responsive_sizer/issues)

If you would like to contribute, feel free to create a [PR](https://github.com/CoderUni/responsive_sizer/pulls)