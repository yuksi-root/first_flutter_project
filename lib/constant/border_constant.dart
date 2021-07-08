import 'package:flutter/material.dart';

class BorderConstants {
  static BorderConstants instance = BorderConstants._init();
  BorderConstants._init();

  final radiusAllCirculor = RoundedRectangleBorder(
      side: BorderSide(color: Colors.blue, width: 1),
      borderRadius: BorderRadius.circular(10));
}
