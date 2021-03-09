import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Networking/SendData/model_class_api_service.dart';
import 'package:flutter_cookbook_all/Networking/SendData/send_data_api_service.dart';

class SendData extends StatefulWidget {
  @override
  _SendDataState createState() => _SendDataState();
}

class _SendDataState extends State<SendData> {
  Future<NewAlbum> albumData;
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Data'),
        centerTitle: true,
      ),
      body: albumData == null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 70,
                      right: 70,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter the album title',
                      ),
                      onChanged: (value) {
                        setState(() {
                          title = value;
                        });
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        albumData = SendDataAPIService().createData(title);
                      });
                    },
                    child: Text('Create Data'),
                  ),
                ],
              ),
            )
          : Center(
              child: FutureBuilder(
                future: albumData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var result = snapshot.data;
                    return Text(result.title);
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
    );
  }
}
