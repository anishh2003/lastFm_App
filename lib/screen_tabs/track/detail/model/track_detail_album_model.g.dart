// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_detail_album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackAlbumModel _$TrackAlbumModelFromJson(Map<String, dynamic> json) {
  return TrackAlbumModel(
    title: json['title'] as String,
    artist: json['artist'] as String,
    image: (json['image'] as List<dynamic>)
        .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TrackAlbumModelToJson(TrackAlbumModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'artist': instance.artist,
      'image': instance.image,
    };
