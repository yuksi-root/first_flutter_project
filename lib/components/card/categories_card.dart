import 'package:first_flutter_project/constant/border_constant.dart';
import 'package:first_flutter_project/constant/padding_constant.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String name;
  final String body;
  final Color cardColor;
  final Color textTitleColor;
  final Color textTaskColor;
  final int value;
  const CategoriesCard(
      {Key? key,
      required this.name,
      required this.body,
      required this.cardColor,
      required this.textTitleColor,
      required this.textTaskColor,
      required this.value})
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
      children: [buildTextName(context), buildRowTexts(context)],
    );
  }

  Row buildRowTexts(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTextValue(context),
        buildTextBody(context),
      ],
    );
  }

  Text buildTextName(BuildContext context) {
    return Text(name,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: textTitleColor, fontWeight: FontWeight.bold));
  }

  Padding buildTextBody(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(body,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: textTaskColor, fontWeight: FontWeight.bold)),
      );

  Text buildTextValue(BuildContext context) => Text(value.toString(),
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: textTaskColor, fontWeight: FontWeight.bold));
}
