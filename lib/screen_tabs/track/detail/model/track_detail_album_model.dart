import 'package:json_annotation/json_annotation.dart';
import 'package:music_search/screen_tabs/track/detail/model/track_detail_image_model.dart';

part 'track_detail_album_model.g.dart';

@JsonSerializable()
class TrackAlbumModel {
  String title;
  String artist;

  List<ImageModel> image;

  TrackAlbumModel({
    required this.title,
    required this.artist,
    required this.image,
  });

  factory TrackAlbumModel.fromJson(Map<String, dynamic> json) =>
      _$TrackAlbumModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrackAlbumModelToJson(this);
}
