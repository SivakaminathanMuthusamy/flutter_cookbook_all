import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Lists/create_a_floating_app_bar.dart';
import 'package:flutter_cookbook_all/Lists/create_a_grid_list.dart';
import 'package:flutter_cookbook_all/Lists/create_a_horizontal_list.dart';
import 'package:flutter_cookbook_all/Lists/create_a_list_view.dart';
import 'package:flutter_cookbook_all/Lists/miscItems/create_a_misc_list.dart';
import 'package:flutter_cookbook_all/Lists/working_with_long_lists.dart';

class ArrangeAsTabsLists extends StatefulWidget {
  @override
  _ArrangeAsTabsListsState createState() => _ArrangeAsTabsListsState();
}

class _ArrangeAsTabsListsState extends State<ArrangeAsTabsLists> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Cookbook - Design'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.list),
              ),
              Tab(
                icon: Icon(Icons.list_outlined),
              ),
              Tab(
                icon: Icon(Icons.list_alt_rounded),
              ),
              Tab(
                icon: Icon(Icons.list_alt_sharp),
              ),
              Tab(
                icon: Icon(Icons.list_alt),
              ),
              Tab(
                icon: Icon(Icons.wine_bar),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridList(),
            HorizontalList(),
            MiscList(),
            ShortLists(),
            LongLists(),
            FloatingAppBar(),
          ],
        ),
      ),
    );
  }
}
