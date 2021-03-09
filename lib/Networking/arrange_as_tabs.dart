import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Networking/FetchData/fetch_data_from_the_internet.dart';
import 'package:flutter_cookbook_all/Networking/FetchImages/fetch_image_per_cookbook.dart';
import 'package:flutter_cookbook_all/Networking/SendData/send_data_to_the_internet.dart';

class ArrangeAsTabsNetworking extends StatefulWidget {
  @override
  _ArrangeAsTabsNetworkingState createState() =>
      _ArrangeAsTabsNetworkingState();
}

class _ArrangeAsTabsNetworkingState extends State<ArrangeAsTabsNetworking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Networking'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.web),
              ),
              Tab(
                icon: Icon(Icons.web_asset),
              ),
              Tab(
                icon: Icon(Icons.photo_album),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FetchData(),
            SendData(),
            FetchImages(),
          ],
        ),
      ),
    );
  }
}
