import 'package:flutter/material.dart';

class LongLists extends StatefulWidget {
  @override
  _LongListsState createState() => _LongListsState();
}

class _LongListsState extends State<LongLists> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(
      100,
      (index) => Text('Index $index'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Long Lists'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          Widget item = items[index];
          return ListTile(
            title: item,
          );
        },
      ),
    );
  }
}
