import 'package:json_annotation/json_annotation.dart';

part 'artist_data.g.dart';

@JsonSerializable()
class ArtistData {
  String name;

  ArtistData({required this.name});

  factory ArtistData.fromJson(Map<String, dynamic> json) =>
      _$ArtistDataFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistDataToJson(this);
}
