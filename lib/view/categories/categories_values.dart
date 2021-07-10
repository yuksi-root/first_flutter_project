import 'package:first_flutter_project/view/categories/categories_model.dart';

import 'package:flutter/material.dart';

class CategoriesValues {
  static List<Category> getAllCategories() {
    return [
      Category(
          name: "Personal",
          body: "Task",
          cardColor: Colors.purple,
          textTitleColor: Colors.white,
          textTaskColor: Colors.red,
          value: 0),
      Category(
          name: "Shopping",
          body: "Task",
          cardColor: Colors.teal,
          textTitleColor: Colors.white,
          textTaskColor: Colors.red,
          value: 0),
      Category(
          name: "Sport",
          body: "Task",
          cardColor: Colors.purple,
          textTitleColor: Colors.white,
          textTaskColor: Colors.red,
          value: 0),
      Category(
          name: "Work",
          body: "Task",
          cardColor: Colors.teal,
          textTitleColor: Colors.white,
          textTaskColor: Colors.red,
          value: 0),
      Category(
          name: "Event",
          body: "Task",
          cardColor: Colors.purple,
          textTitleColor: Colors.white,
          textTaskColor: Colors.red,
          value: 0),
      Category(
          name: "Date",
          body: "Task",
          cardColor: Colors.teal,
          textTitleColor: Colors.white,
          textTaskColor: Colors.red,
          value: 0)
    ];
  }
}
