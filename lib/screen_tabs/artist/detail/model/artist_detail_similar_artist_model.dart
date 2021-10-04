import 'package:json_annotation/json_annotation.dart';
import 'package:music_search/screen_tabs/artist/detail/model/artist_detail_image_model.dart';

part 'artist_detail_similar_artist_model.g.dart';

@JsonSerializable()
class ArtistsInfoModel {
  String name;

  ArtistsInfoModel({
    required this.name,
  });

  factory ArtistsInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistsInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistsInfoModelToJson(this);
}
