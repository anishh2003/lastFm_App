import 'package:json_annotation/json_annotation.dart';

part 'artist_detail_image_model.g.dart';

@JsonSerializable()
class ArtistImageModel {
  @JsonKey(name: '#text')
  final String name;
  String size;

  ArtistImageModel({
    required this.name,
    required this.size,
  });

  factory ArtistImageModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistImageModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistImageModelToJson(this);
}
