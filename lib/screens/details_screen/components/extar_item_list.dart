import 'package:flutter/material.dart';
import 'package:ui_3/screens/details_screen/components/extra_items.dart';


class ExtraItemsList extends StatelessWidget {
  const ExtraItemsList({
    Key key,
    @required this.extraList,
  }) : super(key: key);

  final List<Map<String, String>> extraList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: extraList.length,
      itemBuilder: (context, index) => ExtraItems(
          icon: extraList[index]["icon"],
          text: extraList[index]["text"],
          ),
    );
  }
}
