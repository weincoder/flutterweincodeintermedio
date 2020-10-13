import 'dart:convert';

import 'package:ValhallaApp/custom/Bloc/maps/album_map.dart';
import 'package:ValhallaApp/custom/Bloc/models/album.dart';
import 'package:http/http.dart' as http;
Future <Album> apiAlbum () async {
  final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');
  if (response.statusCode == 200){
    return albumFromJson(jsonDecode( response.body));
  }else {
    throw Exception('Fue imposible cargar el album');
  }

}