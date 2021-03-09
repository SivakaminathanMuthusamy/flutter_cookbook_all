import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Navigation/model_class_message.dart';

class NavigationFirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('NamedRoutes & Hero Animation'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: Message(sender: 'Siva', text: 'Hello World'),
                );
              },
              child: Hero(
                tag: 'ESBR',
                child: Image.asset('assets/ESBR.png'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: Message(sender: 'Siva', text: 'Hello World'),
                );
              },
              child: Text('Go to Route 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationSecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Message args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Second Route'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: 'ESBR',
              child: Image.asset('assets/ESBR.png'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(args.text),
            ),
          ],
        ),
      ),
    );
  }
}
