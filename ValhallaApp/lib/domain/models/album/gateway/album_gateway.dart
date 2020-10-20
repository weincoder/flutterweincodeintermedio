import 'package:ValhallaApp/domain/models/album/album.dart';

abstract class AlbumGateway {
   Future<Album> getByID( String id );
   Future<List<Album>> getAll();
}
