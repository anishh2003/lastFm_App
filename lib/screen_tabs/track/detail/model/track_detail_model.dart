import 'package:json_annotation/json_annotation.dart';
import 'package:music_search/screen_tabs/track/detail/model/track_detail_album_model.dart';
import 'package:music_search/screen_tabs/track/detail/model/track_detail_artist_model.dart';
import 'package:music_search/screen_tabs/track/detail/model/track_detail_wiki_model.dart';

part 'track_detail_model.g.dart';

@JsonSerializable()
class TrackModel {
  TrackAlbumModel? album;
  TrackWikiModel? wiki;
  String name;
  TrackArtistModel artist;
  String url;

  TrackModel(
      {this.album,
      this.wiki,
      required this.name,
      required this.artist,
      required this.url});

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrackModelToJson(this);
}
