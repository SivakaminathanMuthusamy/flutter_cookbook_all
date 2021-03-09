import 'package:flutter/material.dart';
import 'package:flutter_cookbook_all/Networking/FetchImages/fetch_image_api_service.dart';
import 'package:flutter_cookbook_all/Networking/FetchImages/model_class_api_service.dart';
import 'package:http/http.dart' as http;

class FetchPhotos extends StatefulWidget {
  @override
  _FetchPhotosState createState() => _FetchPhotosState();
}

class _FetchPhotosState extends State<FetchPhotos> {
  List<Photos> photosList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Photos'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: PhotosAPIService().fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            photosList = snapshot.data;
            return GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Image.network(photosList[index].thumbnailUrl);
              },
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
