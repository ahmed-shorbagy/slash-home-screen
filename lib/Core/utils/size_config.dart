import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1200;

  static double? screenhieght;
  static double? screenwidth;
  static double? defaultSize;
  static Orientation? orientation;
  void init(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenhieght = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenhieght! * 0.024
        : screenwidth! * 0.024;
  }
}
