import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/images/display_images_from_the_internet.dart';
import 'package:flutter_cookbook_all/images/fade_in_images_with_placeholder.dart';
import 'package:flutter_cookbook_all/images/working_with_cached_images.dart';

class ArrangeAsTabsImages extends StatefulWidget {
  @override
  _ArrangeAsTabsImagesState createState() => _ArrangeAsTabsImagesState();
}

class _ArrangeAsTabsImagesState extends State<ArrangeAsTabsImages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Cookbook - Design'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.web),
              ),
              Tab(
                icon: Icon(Icons.web_asset),
              ),
              // Tab(
              //   icon: Icon(Icons.web_outlined),
              // ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FadeInImagesWithPlaceholder(),
            DisplayNetworkImage(),
            //DisplayCachedNetworkImage(),
          ],
        ),
      ),
    );
  }
}
