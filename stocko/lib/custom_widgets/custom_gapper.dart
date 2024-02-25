import 'package:flutter/material.dart';

abstract class Gap {
  static Widget row({required double width}) {
    return SizedBox(width: width);
  }

  static Widget column({required double height}) {
    return SizedBox(height: height);
  }
}
