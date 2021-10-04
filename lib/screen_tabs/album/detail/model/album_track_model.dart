import 'package:json_annotation/json_annotation.dart';
import 'package:music_search/screen_tabs/album/detail/model/album_track_info_model.dart';

part 'album_track_model.g.dart';

@JsonSerializable()
class AlbumTrackModel {
  List<AlbumTrackInfo> track;

  AlbumTrackModel({
    required this.track,
  });

  factory AlbumTrackModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumTrackModelFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumTrackModelToJson(this);
}
