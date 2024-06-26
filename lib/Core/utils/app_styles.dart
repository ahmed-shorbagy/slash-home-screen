import 'package:flutter/material.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleBold22(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w500,
    );
  }
}

// Get Responsive Font Size based on screen width
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 1.1;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

// Get Scale Factor based on screen width
double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobile) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 500;
  }
}
