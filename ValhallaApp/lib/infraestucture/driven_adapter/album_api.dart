import 'dart:convert';
import 'package:ValhallaApp/domain/models/album/album.dart';
import 'package:ValhallaApp/domain/models/album/gateway/album_gateway.dart';
import 'package:ValhallaApp/infraestucture/maps/album_mapper.dart';
import 'package:http/http.dart' as  http;

class  AlbumApi extends AlbumGateway {
  @override
  Future<List<Album>> getAll() async {
      throw Exception('No se ha implementado este método ');
  }

  @override
  Future<Album> getByID(String id) async{
    await Future.delayed(Duration(seconds: 2));
    final response = await http.get('https://jsonplaceholder.typicode.com/albums/'+id);
    if (response.statusCode == 200){
      return  albumFromJson(jsonDecode( response.body));
    }else {
      throw Exception('Fue imposible adquirir esta url');
    }
  }

}
