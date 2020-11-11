import 'package:ValhallaApp/UI/commons/molecules/our_app_bar.dart';
import 'package:ValhallaApp/UI/commons/molecules/our_footer.dart';
import 'package:ValhallaApp/UI/helpers/async-snapshot-album-helper.dart';
import 'package:ValhallaApp/config/usecase_config.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UseCaseConfig _albumConfig = UseCaseConfig();
    return Scaffold(
      appBar: OurAppBar(title: 'Valhalla', iconAppBar: Icon(Icons.add_alert)),
      body: Center(
          child: FutureBuilder(
            future: _albumConfig.getAlbumUseCase.getAlbumByID('12'),
            builder: (BuildContext context, AsyncSnapshot snapshot) =>
                asyncSnapshotAlbumHelper(snapshot)),
      ),
      bottomNavigationBar: OurFooter(iconLeft: Icon(Icons.home), iconRight: Icon(Icons.account_circle),),
    );
  }
}