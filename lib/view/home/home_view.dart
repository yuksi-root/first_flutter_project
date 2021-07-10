import 'package:first_flutter_project/components/card/categories_card.dart';
import 'package:first_flutter_project/constant/color_constant.dart';
import 'package:first_flutter_project/view/categories/categories_model.dart';
import 'package:first_flutter_project/view/categories/categories_values.dart';
import 'package:first_flutter_project/view/home/home_model.dart';

import 'home_view_model.dart';
import 'package:flutter/material.dart';

part 'home_string_values.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeModel model = new HomeModel('', '');
  _HomeStringValues values = _HomeStringValues();

  final HomeViewModel viewModel = HomeViewModel();

  List<Category> categories = CategoriesValues.getAllCategories();

  @override
  void initState() {
    super.initState();
    model = HomeModel('50+', 'Categories');
  }

  void _changeValue() {
    categories.forEach((element) {
      element.value = viewModel.randomValue(value: 30);
    });
    setState(() {}); //update screen
  }

  Color _primarySetColor(int value) {
    bool isPrime = viewModel.isPrime(value);
    Color _primary = isPrime ? Colors.orange : Colors.teal;
    return _primary;
  }

  Color _secondarySetColor(int value) {
    bool isEven = value.isEven;
    Color _secondary = isEven ? Colors.indigo : Colors.purple;
    return _secondary;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _changeValue,
        child: Text("+", style: Theme.of(context).textTheme.headline4),
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            values.title,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ColorConstants.instance.black),
          ),
          Expanded(
              flex: 1,
              child: CategoriesCard(
                  name: model.title,
                  body: model.description,
                  cardColor: Colors.blue,
                  textTitleColor: Colors.white,
                  textTaskColor: ColorConstants.instance.white,
                  value: 0)),
          Expanded(
              flex: 4,
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, int i) {
                    return Expanded(
                        child: CategoriesCard(
                      name: categories[i].name,
                      body: categories[i].body,
                      value: categories[i].value,
                      cardColor: _secondarySetColor(categories[i].value),
                      textTitleColor: categories[i].textTitleColor,
                      textTaskColor: _primarySetColor(categories[i].value),
                    ));
                  }))
        ],
      ),
    );
  }
}
