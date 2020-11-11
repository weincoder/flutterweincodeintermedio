import 'package:ValhallaApp/domain/models/album/album.dart';
import 'package:ValhallaApp/domain/models/album/gateway/album_gateway.dart';


class GetAlbumUseCase {
  final AlbumGateway _albumGateway;
  GetAlbumUseCase(this._albumGateway);
  Future<Album> getAlbumByID (String id) async{
    return this._albumGateway.getByID(id);
  }
  Future<List<Album>> getAll () async{
    return this._albumGateway.getAll();
  }
}