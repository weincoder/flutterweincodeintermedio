import 'dart:convert';
import 'file:///C:/Users/Admin/code/flutterweincodeintermedio/ValhallaApp/lib/domain/models/album/album.dart';

albumFromJson (Map<String, dynamic> json) =>  Album(
  userId: json["userId"],
  id: json["id"],
  title: json["title"],
);
albumToJson (Album data) => json.encode (
    {
      "userId": data.userId,
      "id": data.id,
      "title": data.title,
    }
);