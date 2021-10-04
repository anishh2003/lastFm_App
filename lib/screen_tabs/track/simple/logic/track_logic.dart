import 'dart:convert';

import 'package:music_search/screen_tabs/track/simple/model/track_data.dart';
import 'package:music_search/services/network_service.dart';

Future<List<TrackData>> getTrackData(String searchTermEntered) async {
  List<TrackData> tracks = [];

  var jsonData =
      await NetworkHelper.fetchSelectedTabData('track', searchTermEntered);

  List<dynamic> data = jsonDecode(jsonData)['results']['trackmatches']['track'];

  tracks = data.map((teamData) => TrackData.fromJson(teamData)).toList();

  return tracks;
}
