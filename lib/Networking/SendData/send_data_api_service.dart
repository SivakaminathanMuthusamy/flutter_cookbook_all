import 'dart:convert';

import 'package:flutter_cookbook_all/Networking/SendData/model_class_api_service.dart';
import 'package:http/http.dart' as http;

class SendDataAPIService {
  Future<NewAlbum> createData(String title) async {
    Uri url = Uri.https('jsonplaceholder.typicode.com', 'albums');
    http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{'title': title},
      ),
    );
    var result = jsonDecode(response.body);
    return NewAlbum.fromJson(result);
  }
}
