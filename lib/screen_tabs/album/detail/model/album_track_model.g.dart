// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_track_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumTrackModel _$AlbumTrackModelFromJson(Map<String, dynamic> json) {
  return AlbumTrackModel(
    track: (json['track'] as List<dynamic>)
        .map((e) => AlbumTrackInfo.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AlbumTrackModelToJson(AlbumTrackModel instance) =>
    <String, dynamic>{
      'track': instance.track,
    };
