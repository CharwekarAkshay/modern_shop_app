import 'package:flutter/material.dart';
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double screenSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }  

  // * Get the proportiante height as per screen size
  double getProportinateScreenHeight(double inputHeight) {
    double screenHeight = SizeConfig.screenHeight;
    // * 812 is designer height that designer use
    return (inputHeight / 812.0) * screenHeight;
  }
  
  // * Get the proportiante width as per screen size
  double getProportinateScreenWidth(double inputWidth) {
    double screenWidth = SizeConfig.screenWidth;
    // * 375 is designer width that designer use
    return (inputWidth / 375.0) * screenWidth;
  }
}