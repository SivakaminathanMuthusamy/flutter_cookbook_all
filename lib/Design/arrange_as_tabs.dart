import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Design/add_a_drawer_to_a_screen.dart';
import 'package:flutter_cookbook_all/Design/display_a_snackbar.dart';
import 'package:flutter_cookbook_all/Design/update_the_UI_based_on_orientation.dart';
import 'package:flutter_cookbook_all/Design/use_a_custom_font.dart';

class ArrangeAsTabsDesign extends StatefulWidget {
  @override
  _ArrangeAsTabsDesignState createState() => _ArrangeAsTabsDesignState();
}

class _ArrangeAsTabsDesignState extends State<ArrangeAsTabsDesign> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Cookbook - Design'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.menu),
              ),
              Tab(
                icon: Icon(Icons.notifications),
              ),
              Tab(
                icon: Icon(Icons.rotate_right_rounded),
              ),
              Tab(
                icon: Icon(Icons.font_download_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AddDrawerToScreen(),
            DisplaySnackbar(),
            UpdateUIBasedOnOrientation(),
            UseCustomFont(),
          ],
        ),
      ),
    );
  }
}
