// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_detail_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistImageModel _$ArtistImageModelFromJson(Map<String, dynamic> json) {
  return ArtistImageModel(
    name: json['#text'] as String,
    size: json['size'] as String,
  );
}

Map<String, dynamic> _$ArtistImageModelToJson(ArtistImageModel instance) =>
    <String, dynamic>{
      '#text': instance.name,
      'size': instance.size,
    };
