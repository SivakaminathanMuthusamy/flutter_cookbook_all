import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Design/arrange_as_tabs.dart';
import 'package:flutter_cookbook_all/Forms/arrange_as_tabs.dart';
import 'package:flutter_cookbook_all/Gestures/arrange_as_tabs.dart';
import 'package:flutter_cookbook_all/Images/arrange_as_tabs.dart';
import 'package:flutter_cookbook_all/Lists/arrange_as_tabs.dart';
import 'package:flutter_cookbook_all/Navigation/arrange_as_tabs.dart';
import 'package:flutter_cookbook_all/Navigation/navigate_to_a_new_screen_and_back.dart';
import 'package:flutter_cookbook_all/Networking/arrange_as_tabs.dart';
import 'package:flutter_cookbook_all/Plugins/arrange_as_tabs.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cookbook',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.teal,
        accentColor: Colors.yellow,
        textTheme: TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold),
          headline6: TextStyle(fontWeight: FontWeight.normal),
          //bodyText2: TextStyle(fontFamily: 'Pokedex'),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ArrangeAsTabsNetworking(),
        '/second': (context) => NavigationSecondRoute(),
        '/design': (context) => ArrangeAsTabsDesign(),
        '/forms': (context) => ArrangeAsTabsForms(),
        '/gestures': (context) => ArrangeAsTabsGestures(),
        '/images': (context) => ArrangeAsTabsImages(),
        '/lists': (context) => ArrangeAsTabsLists(),
        '/plugins': (context) => ArrangeAsTabsPlugins(),
        '/navigation': (context) => ArrangeAsTabsNavigation(),
      },
    );
  }
}
