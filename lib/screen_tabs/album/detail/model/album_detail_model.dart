import 'package:json_annotation/json_annotation.dart';
import 'package:music_search/screen_tabs/album/detail/model/album_track_model.dart';
import 'package:music_search/screen_tabs/album/detail/model/album_wiki_model.dart';

part 'album_detail_model.g.dart';

@JsonSerializable()
class AlbumDetailModel {
  AlbumTrackModel tracks;
  AlbumWikiModel? wiki;
  String artist;
  String name;

  AlbumDetailModel(
      {required this.tracks,
      required this.wiki,
      required this.artist,
      required this.name});

  factory AlbumDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumDetailModelToJson(this);
}
