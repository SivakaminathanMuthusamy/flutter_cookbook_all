import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Forms/build_a_form_with_validation.dart';
import 'package:flutter_cookbook_all/Forms/focus_and_text_fields.dart';

class ArrangeAsTabsForms extends StatefulWidget {
  @override
  _ArrangeAsTabsFormsState createState() => _ArrangeAsTabsFormsState();
}

class _ArrangeAsTabsFormsState extends State<ArrangeAsTabsForms> {
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
                icon: Icon(Icons.menu),
              ),
              Tab(
                icon: Icon(Icons.notifications),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FormWithValidation(),
            FocusTextField(),
            //TextFieldAndTextFormField(),
          ],
        ),
      ),
    );
  }
}
