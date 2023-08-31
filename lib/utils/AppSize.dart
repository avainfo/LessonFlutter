import 'package:flutter/cupertino.dart';

extension AppSize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get textScaleFactore => MediaQuery.of(this).textScaleFactor;
}