// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumData _$AlbumDataFromJson(Map<String, dynamic> json) {
  return AlbumData(
    name: json['name'] as String,
    artist: json['artist'] as String,
  );
}

Map<String, dynamic> _$AlbumDataToJson(AlbumData instance) => <String, dynamic>{
      'name': instance.name,
      'artist': instance.artist,
    };
