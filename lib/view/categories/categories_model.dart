import 'package:flutter/material.dart';

class Category {
  final String name;
  final String body;
  final Color cardColor;
  final Color textTitleColor;
  final Color textTaskColor;
  int value;
  Category(
      {required this.name,
      required this.body,
      required this.cardColor,
      required this.textTitleColor,
      required this.textTaskColor,
      required this.value});
}
