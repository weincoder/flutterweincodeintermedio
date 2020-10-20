import 'dart:convert';

import 'package:ValhallaApp/domain/models/album/album.dart';
import 'package:ValhallaApp/infraestucture/maps/album_mapper.dart';
import 'package:http/http.dart' as http;
Future<Album> algo( )  async {
  await Future.delayed(Duration(seconds: 2));
  final response = await http.get(
      'https://jsonplaceholder.typicode.com/albums/1');
  if (response.statusCode == 200) {
    return albumFromJson(jsonDecode(response.body));
  } else {
    throw Exception('Fue imposible adquirir esta url');
  }
}