import 'package:json_annotation/json_annotation.dart';

part 'album_data.g.dart';

@JsonSerializable()
class AlbumData {
  String name;
  String artist;

  AlbumData({required this.name, required this.artist});

  factory AlbumData.fromJson(Map<String, dynamic> json) =>
      _$AlbumDataFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumDataToJson(this);
}
