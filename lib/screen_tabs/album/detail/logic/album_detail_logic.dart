import 'dart:convert';

import 'package:music_search/screen_tabs/album/detail/model/album_detail_model.dart';
import 'package:music_search/services/network_service.dart';

Future<AlbumDetailModel> getAlbumDetailsData(
    String albumName, String artist) async {
  AlbumDetailModel _album;

  var jsonData = await NetworkHelper.fetchAlbumDetailData(albumName, artist);

  var data = jsonDecode(jsonData)['album'];

  _album = AlbumDetailModel.fromJson(data);

  return _album;
}
