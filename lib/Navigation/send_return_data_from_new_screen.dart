import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Navigation/model_class_todo.dart';

class ToDoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ToDo> toDos = List<ToDo>.generate(
      20,
      (index) {
        return ToDo(
            title: 'ToDo $index',
            description: 'This is the description for ToDo$index');
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Send and Return data from a screen'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: toDos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(toDos[index].title),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ToDoDescriptionPage(
                      todoDescription: toDos[index].description),
                ),
              );
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(result),
                  ),
                );
            },
          );
        },
      ),
    );
  }
}

class ToDoDescriptionPage extends StatelessWidget {
  ToDoDescriptionPage({this.todoDescription});
  final String todoDescription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo Description Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(todoDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Yeah');
                  },
                  child: Text('Yeah'),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Nope');
                  },
                  child: Text('Nope'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
