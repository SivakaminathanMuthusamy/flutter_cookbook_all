import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Networking/FetchData/fetch_data_api_service.dart';
import 'package:flutter_cookbook_all/Networking/FetchData/model_class_api_service.dart';

class FetchData extends StatefulWidget {
  @override
  _FetchDataState createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  Future<Album> albumData;
  FetchDataAPIService apiService = FetchDataAPIService();
  String title;
  @override
  void initState() {
    super.initState();
    albumData = apiService.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD Operations'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: albumData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var result = snapshot.data;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    result.title ?? 'Data Deleted',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        albumData = apiService.getData();
                      });
                    },
                    child: Text('Read / GET data'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 70.0,
                      right: 70.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter the new title',
                      ),
                      onChanged: (value) {
                        title = value;
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        albumData = apiService.updateData(title);
                      });
                    },
                    child: Text('Update / PUT data'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        albumData = apiService.deleteData(
                          result.id.toString(),
                        );
                      });
                    },
                    child: Text('Delete / DELETE data'),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
