## [3.1.1] - 14.09.2022

* Added desktop as one of the screen type options

## [3.1.0] - 18.07.2022

* Fixed bug where device width and height is initially zero in release mode 

## [3.0.8] - 14.05.2022

* Updated WidgetsBinding to support both Flutter 2 and 3

## [3.0.7] - 11.05.2022

* Added devicePixelRatio fallback value

## [3.0.6+1] - 11.05.2022

* Fixed formatting

## [3.0.6] - 11.05.2022

* **Important Change:** ResponsiveSizer doesn't need to be inside MaterialApp anymore
* Added absolute units: cm, mm, Q, inches, pc, pt, px
* Added relative units: vmin, vmax

## [3.0.5+1] - 27.12.2021

* Improved README

## [3.0.5] - 27.12.2021

* Fixed bugs where the app will not render in release mode

## [3.0.4+4] - 19.06.2021

* Added a better explanation of `.h` and `.w` in the example

## [3.0.4+3] - 19.06.2021

* Improved documentation

## [3.0.4+2] - 19.06.2021

* Improved documentation

## [3.0.4+1] - 10.06.2021

* Fixed formatting

## [3.0.4] - 10.06.2021

* Changed implementation of .sp

## [3.0.3] - 08.06.2021

* Added a way to check device platform without getting compatibility issue

## [3.0.2] - 08.06.2021

* Removed checks for device type because of dart 2 incompatibility issue

## [3.0.1] - 08.06.2021

* Fixed Web compatibility error due to dart:io

## [3.0.0] - 08.06.2021

* **Breaking Change:** The package will set the correct width and height regardless of the orientation [See Issue#6](https://github.com/CoderUni/responsive_sizer/issues/6)
* **Breaking Change:** Changed `.sp` to calculate the value using device's pixel density ratio
* Added a way to check the device type (Android, Ios, Web, Windows, etc.)

## [2.0.1] - 19.04.2021

* Fixes [Issue#2](https://github.com/CoderUni/responsive_sizer/issues/2) where the correct width and height aren't set when in landscape orientation
* Added `adaptiveHeight` and `adaptiveWidth` parameter that is used for calculation to replace the old width and height

## [2.0.0+2] - 18.04.2021

* Changed description
* Improved formatting in documentation

## [2.0.0+1] - 15.04.2021

* Improved formatting in documentation

## [2.0.0] - 14.04.2021

* ResponsiveSizer now accepts builder parameter to fix [Issue#1](https://github.com/CoderUni/responsive_sizer/issues/1)
* Fixed bug where `Orientation` and `ScreenType` doesn't get set by `Device.setScreenSize`

## [1.1.0+1] - 12.04.2021.

* Fixed broken README links

## [1.1.0] - 10.04.2021.

* Added Adaptive class to support auto import package
* Fixed a bug where changing the orientation changes the ScreenType

## [1.0.0+4] - 09.04.2021.

* Fixed Typo

## [1.0.0+3] - 09.04.2021.

* Formatted dart files according to pass static analysis

## [1.0.0+2] - 09.04.2021.

* Updated import package version in README.md 

## [1.0.0+2] - 09.04.2021.

* Updated import package version in README.md 

## [1.0.0+1] - 09.04.2021.

* Improved Documentation

## [1.0.0] - 08.04.2021.

* First Release