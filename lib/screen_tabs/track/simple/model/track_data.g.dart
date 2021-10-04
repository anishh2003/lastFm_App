// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackData _$TrackDataFromJson(Map<String, dynamic> json) {
  return TrackData(
    name: json['name'] as String,
    artist: json['artist'] as String,
  );
}

Map<String, dynamic> _$TrackDataToJson(TrackData instance) => <String, dynamic>{
      'name': instance.name,
      'artist': instance.artist,
    };
