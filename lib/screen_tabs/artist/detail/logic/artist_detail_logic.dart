import 'dart:convert';
import 'package:music_search/screen_tabs/artist/detail/model/artist_detail_model.dart';
import 'package:music_search/services/network_service.dart';

Future<ArtistDetailModel> getArtistDetailsData(String artist) async {
  ArtistDetailModel _artist;

  var jsonData = await NetworkHelper.fetchArtistDetailData(artist);

  var data = jsonDecode(jsonData)['artist'];

  _artist = ArtistDetailModel.fromJson(data);

  return _artist;
}
