import 'package:flutter_cookbook_all/Networking/FetchData/model_class_api_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchDataAPIService {
  Future<Album> getData() async {
    Uri url = Uri.https('jsonplaceholder.typicode.com', 'albums/1');
    http.Response response = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var result = jsonDecode(response.body);
    return Album.fromJson(result);
  }

  Future<Album> deleteData(String id) async {
    Uri url = Uri.https('jsonplaceholder.typicode.com', 'albums/$id');
    http.Response response = await http.delete(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var result = jsonDecode(response.body);
    return Album.fromJson(result);
  }

  Future<Album> updateData(String title) async {
    Uri url = Uri.https('jsonplaceholder.typicode.com', 'albums/1');
    http.Response response = await http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          'title': title,
        },
      ),
    );
    var result = jsonDecode(response.body);
    print(result);
    return Album.fromJson(result);
  }
}
