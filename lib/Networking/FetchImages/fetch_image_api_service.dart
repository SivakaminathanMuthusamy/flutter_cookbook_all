import 'package:flutter/foundation.dart';
import 'package:flutter_cookbook_all/Networking/FetchImages/model_class_api_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PhotosAPIService {
  Future<List<Photos>> fetchPhotos(http.Client client) async {
    Uri url = Uri.https('jsonplaceholder.typicode.com', 'photos');
    print(url);
    final response = await client.get(url);
    return compute(parsePhotos, response.body);
  }

  List<Photos> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Photos>((json) => Photos.fromJson(json)).toList();
  }
}
