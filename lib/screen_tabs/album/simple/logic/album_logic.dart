import 'dart:convert';

import 'package:music_search/screen_tabs/album/simple/model/album_data.dart';
import 'package:music_search/services/network_service.dart';

Future<List<AlbumData>> getAlbumData(String searchTermEntered) async {
  List<AlbumData> albums = [];

  var jsonData =
      await NetworkHelper.fetchSelectedTabData('album', searchTermEntered);

  List<dynamic> data = jsonDecode(jsonData)['results']['albummatches']['album'];

  albums = data.map((teamData) => AlbumData.fromJson(teamData)).toList();

  return albums;
}
