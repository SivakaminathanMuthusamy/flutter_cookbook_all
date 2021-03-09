import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Lists/miscItems/abstract_list_item.dart';
import 'package:flutter_cookbook_all/Lists/miscItems/heading_item.dart';
import 'package:flutter_cookbook_all/Lists/miscItems/message_item.dart';

class MiscList extends StatefulWidget {
  @override
  _MiscListState createState() => _MiscListState();
}

class _MiscListState extends State<MiscList> {
  @override
  Widget build(BuildContext context) {
    List<ListItem> miscItems = List.generate(
      120,
      (index) => index % 6 == 0
          ? HeadingItem(heading: 'Heading $index')
          : MessageItem(message: 'Message $index', sender: 'Sender $index'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Misc List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: miscItems.length,
        itemBuilder: (context, index) {
          ListItem item = miscItems[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      ),
    );
  }
}
