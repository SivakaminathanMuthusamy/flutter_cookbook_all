import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Lists/miscItems/abstract_list_item.dart';

class HeadingItem implements ListItem {
  HeadingItem({this.heading});
  final String heading;

  @override
  Widget buildSubtitle(BuildContext context) => null;

  @override
  Widget buildTitle(BuildContext context) => Text(
        heading,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      );
}
