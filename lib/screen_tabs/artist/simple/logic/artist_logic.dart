import 'dart:convert';
import 'package:music_search/screen_tabs/artist/simple/model/artist_data.dart';
import 'package:music_search/services/network_service.dart';

Future<List<ArtistData>> getArtistData(String searchTermEntered) async {
  List<ArtistData> artists = [];

  var jsonData =
      await NetworkHelper.fetchSelectedTabData('artist', searchTermEntered);

  List<dynamic> data =
      jsonDecode(jsonData)['results']['artistmatches']['artist'];

  artists = data.map((teamData) => ArtistData.fromJson(teamData)).toList();

  return artists;
}
