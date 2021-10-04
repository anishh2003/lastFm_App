import 'package:json_annotation/json_annotation.dart';

part 'track_data.g.dart';

@JsonSerializable()
class TrackData {
  String name;
  String artist;

  TrackData({
    required this.name,
    required this.artist,
  });

  factory TrackData.fromJson(Map<String, dynamic> json) =>
      _$TrackDataFromJson(json);
  Map<String, dynamic> toJson() => _$TrackDataToJson(this);
}
