import 'package:ValhallaApp/domain/usecase/get_album_usecase.dart';
import 'package:ValhallaApp/infraestructure/driven_adapter/album_api.dart';

class UseCaseConfig {
  GetAlbumUseCase getAlbumUseCase;
  AlbumApi _albumApi;
  UseCaseConfig (){
    _albumApi = AlbumApi();
    getAlbumUseCase = GetAlbumUseCase(_albumApi) ;
  }
}