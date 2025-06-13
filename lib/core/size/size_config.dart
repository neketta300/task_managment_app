import 'package:flutter/material.dart';

const int _designHeight = 812;
const int _designWidth = 375;

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }

  static double getVerticalPadding(double designPadding) {
    return designPadding * (screenHeight / _designHeight);
  }

  static double getHorizontalPadding(double designPadding) {
    return designPadding * (screenWidth / _designWidth);
  }
}
