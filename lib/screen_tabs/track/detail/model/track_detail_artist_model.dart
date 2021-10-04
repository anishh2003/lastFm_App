import 'package:json_annotation/json_annotation.dart';
import 'package:music_search/screen_tabs/track/detail/model/track_detail_image_model.dart';

part 'track_detail_artist_model.g.dart';

@JsonSerializable()
class TrackArtistModel {
  String name;

  TrackArtistModel({
    required this.name,
  });

  factory TrackArtistModel.fromJson(Map<String, dynamic> json) =>
      _$TrackArtistModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrackArtistModelToJson(this);
}
