import 'package:json_annotation/json_annotation.dart';
import 'package:music_search/screen_tabs/artist/detail/model/artist_detail_bio_model.dart';
import 'package:music_search/screen_tabs/artist/detail/model/artist_detail_image_model.dart';
import 'package:music_search/screen_tabs/artist/detail/model/artist_detail_similar_model.dart';

part 'artist_detail_model.g.dart';

@JsonSerializable()
class ArtistDetailModel {
  String name;
  BioModel bio;
  ArtistSimilarModel similar;

  ArtistDetailModel({
    required this.name,
    required this.bio,
    required this.similar,
  });

  factory ArtistDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistDetailModelToJson(this);
}
