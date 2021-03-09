import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Lists/miscItems/abstract_list_item.dart';

class MessageItem implements ListItem {
  MessageItem({this.sender, this.message});
  final String sender;
  final String message;

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(
      message,
      style: TextStyle(
        fontSize: 15.0,
      ),
    );
  }

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      sender,
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }
}
