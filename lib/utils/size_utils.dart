import 'package:flutter/cupertino.dart';


Size size = WidgetsBinding.instance.window.physicalSize /
    WidgetsBinding.instance.window.devicePixelRatio;

num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window).viewPadding.top;

get height {
  num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window).viewPadding.top;
  num bottomBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
      .viewPadding
      .bottom;
  num screenHeight = size.height - statusBar - bottomBar;
  return screenHeight;
}

get width {
  return size.width;
}

double getHorizontalSize(double px) {
  return ((px * width) / width);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
  return ((px * height) / (height - statusBar));
}

///This method is used to set smallest px in image height and width
double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set text font size according to Viewport
double getFontSize(double px) {
  return getSize(px);
}
