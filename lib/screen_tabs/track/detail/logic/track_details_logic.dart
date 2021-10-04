import 'dart:convert';

import 'package:music_search/screen_tabs/track/detail/model/track_detail_model.dart';
import 'package:music_search/services/network_service.dart';

Future<TrackModel> getTrackDetailsData(String trackName, String artist) async {
  TrackModel _tracks;

  var jsonData = await NetworkHelper.fetchTrackDetailData(trackName, artist);

  var data = jsonDecode(jsonData)['track'];

  _tracks = TrackModel.fromJson(data);

  return _tracks;
}
