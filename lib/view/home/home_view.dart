import 'package:first_flutter_project/components/card/categories_card.dart';
import 'package:first_flutter_project/constant/color_constant.dart';
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

  int value = 0;
  @override
  void initState() {
    super.initState();
    model = HomeModel('50+', 'Categories');
  }

  void _changeValue() {
    value = viewModel.randomValue(value: 50);
    setState(() {}); //update screen
  }

  bool get isPrime => viewModel.isPrime(value);
  bool get isEven => value.isEven;
  Color get _primary => isPrime ? Colors.indigo : Colors.purple;
  Color get _secondary => isEven ? Colors.green : Colors.teal;

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
                textTitle: Colors.white,
                textTask: ColorConstants.instance.white,
              )),
          Expanded(
              flex: 4,
              child: ListView(
                children: [
                  CategoriesCard(
                      name: "Personal",
                      body: "$value Tasks",
                      cardColor: _primary,
                      textTitle: ColorConstants.instance.white,
                      textTask: _secondary),
                  CategoriesCard(
                      name: "Shopping",
                      body: "$value Tasks",
                      cardColor: _secondary,
                      textTitle: ColorConstants.instance.white,
                      textTask: _primary),
                  CategoriesCard(
                      name: "Sport",
                      body: "$value Tasks",
                      cardColor: _primary,
                      textTitle: ColorConstants.instance.white,
                      textTask: _secondary),
                  CategoriesCard(
                      name: "Event",
                      body: "$value Tasks",
                      cardColor: _secondary,
                      textTitle: ColorConstants.instance.white,
                      textTask: _primary),
                  CategoriesCard(
                      name: "Work",
                      body: "$value Tasks",
                      cardColor: _primary,
                      textTitle: ColorConstants.instance.white,
                      textTask: _secondary),
                ],
              ))
        ],
      ),
    );
  }
}
