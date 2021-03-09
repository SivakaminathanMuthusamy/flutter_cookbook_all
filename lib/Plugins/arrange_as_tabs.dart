import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/plugins/video_player_plugin.dart';

class ArrangeAsTabsPlugins extends StatefulWidget {
  @override
  _ArrangeAsTabsPluginsState createState() => _ArrangeAsTabsPluginsState();
}

class _ArrangeAsTabsPluginsState extends State<ArrangeAsTabsPlugins> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Plugins'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.video_collection),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            VideoPlayerPlugin(),
          ],
        ),
      ),
    );
  }
}
