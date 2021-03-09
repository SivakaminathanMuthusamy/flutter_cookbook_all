import 'package:flutter/material.dart';

class AddDrawerToScreen extends StatefulWidget {
  @override
  _AddDrawerToScreenState createState() => _AddDrawerToScreenState();
}

class _AddDrawerToScreenState extends State<AddDrawerToScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Drawer to a screen'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text('Messages'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            AboutListTile(
              icon: Icon(Icons.info_rounded),
              applicationName: 'Flutter CookBook',
              applicationVersion: 'Version 1.0.0',
              applicationIcon: FlutterLogo(
                size: 50.0,
              ),
              applicationLegalese: '\u{a9} 2021 Sivakaminathan',
              aboutBoxChildren: [
                Text(
                  '\n 1. This is an AboutListTile Widget \n',
                ),
                Text(
                  '2. Shows an About Box with showAboutDialog when tapped \n',
                ),
                Text(
                  '3. The licenses shown are from the LicenseRegistry API',
                ),
              ],
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Text('Open Drawer'),
            ),
          );
        },
      ),
    );
  }
}
