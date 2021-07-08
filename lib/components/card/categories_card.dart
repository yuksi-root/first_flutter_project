import 'package:first_flutter_project/constant/border_constant.dart';
import 'package:first_flutter_project/constant/color_constant.dart';
import 'package:first_flutter_project/constant/padding_constant.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String name;
  final String body;
  final Color cardColor;
  final Color textTitle;
  final Color textTask;
  const CategoriesCard(
      {Key? key,
      required this.name,
      required this.body,
      required this.cardColor,
      required this.textTitle,
      required this.textTask})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: cardColor,
        margin: PaddingConstants.instance.paddingAllNormal,
        shape: BorderConstants.instance.radiusAllCirculor,
        child: buildAlignPaddingTexts(context));
  }

  Align buildAlignPaddingTexts(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: PaddingConstants.instance.paddingAllNormal,
        child: buildColumnTexts(context),
      ),
    );
  }

  Column buildColumnTexts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTextName(context),
        buildTextBody(context),
      ],
    );
  }

  Text buildTextName(BuildContext context) {
    return Text(name,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: textTitle, fontWeight: FontWeight.bold));
  }

  Text buildTextBody(BuildContext context) => Text(body,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: textTask, fontWeight: FontWeight.bold));
}
