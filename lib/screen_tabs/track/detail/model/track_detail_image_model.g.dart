// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_detail_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return ImageModel(
    name: json['#text'] as String,
    size: json['size'] as String,
  );
}

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      '#text': instance.name,
      'size': instance.size,
    };
