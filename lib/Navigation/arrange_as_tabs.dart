import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Navigation/navigate_to_a_new_screen_and_back.dart';
import 'package:flutter_cookbook_all/Navigation/send_return_data_from_new_screen.dart';

class ArrangeAsTabsNavigation extends StatefulWidget {
  @override
  _ArrangeAsTabsNavigationState createState() =>
      _ArrangeAsTabsNavigationState();
}

class _ArrangeAsTabsNavigationState extends State<ArrangeAsTabsNavigation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.arrow_forward),
              ),
              Tab(
                icon: Icon(Icons.list_alt_rounded),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NavigationFirstRoute(),
            ToDoListPage(),
          ],
        ),
      ),
    );
  }
}
