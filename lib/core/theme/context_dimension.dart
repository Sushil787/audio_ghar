import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get deviceHeight => MediaQuery.of(this).size.height;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;
  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;
}
