import 'package:json_annotation/json_annotation.dart';
import 'package:music_search/screen_tabs/artist/detail/model/artist_detail_similar_artist_model.dart';

part 'artist_detail_similar_model.g.dart';

@JsonSerializable()
class ArtistSimilarModel {
  List<ArtistsInfoModel> artist;

  ArtistSimilarModel({
    required this.artist,
  });

  factory ArtistSimilarModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistSimilarModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistSimilarModelToJson(this);
}
