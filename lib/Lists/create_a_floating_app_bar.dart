import 'package:flutter/material.dart';

class FloatingAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Floating App Bar'),
            centerTitle: true,
            floating: true,
            expandedHeight: 100.0,
            flexibleSpace: Placeholder(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('Index $index'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
