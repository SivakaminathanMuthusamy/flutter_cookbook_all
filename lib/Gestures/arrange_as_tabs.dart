import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Gestures/add_material_touch_ripples.dart';
import 'package:flutter_cookbook_all/Gestures/handle_taps.dart';
import 'package:flutter_cookbook_all/Gestures/implement_swipe_to_dismiss.dart';

class ArrangeAsTabsGestures extends StatefulWidget {
  @override
  _ArrangeAsTabsGesturesState createState() => _ArrangeAsTabsGesturesState();
}

class _ArrangeAsTabsGesturesState extends State<ArrangeAsTabsGestures> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Gestures'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.touch_app),
              ),
              Tab(
                icon: Icon(Icons.touch_app_outlined),
              ),
              Tab(
                icon: Icon(Icons.swipe),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MaterialTouchInkWell(),
            HandleTapsGestureDetector(),
            SwipeToDismiss(),
          ],
        ),
      ),
    );
  }
}
