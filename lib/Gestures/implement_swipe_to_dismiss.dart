import 'package:flutter/material.dart';

class SwipeToDismiss extends StatefulWidget {
  @override
  _SwipeToDismissState createState() => _SwipeToDismissState();
}

class _SwipeToDismissState extends State<SwipeToDismiss> {
  List<String> items = List<String>.generate(20, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Swipe to dismiss'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            background: Container(color: Colors.red),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
              title: Text(
                items[index],
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
