// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumDetailModel _$AlbumDetailModelFromJson(Map<String, dynamic> json) {
  return AlbumDetailModel(
    tracks: AlbumTrackModel.fromJson(json['tracks'] as Map<String, dynamic>),
    wiki: json['wiki'] == null
        ? null
        : AlbumWikiModel.fromJson(json['wiki'] as Map<String, dynamic>),
    artist: json['artist'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$AlbumDetailModelToJson(AlbumDetailModel instance) =>
    <String, dynamic>{
      'tracks': instance.tracks,
      'wiki': instance.wiki,
      'artist': instance.artist,
      'name': instance.name,
    };
