// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistDetailModel _$ArtistDetailModelFromJson(Map<String, dynamic> json) {
  return ArtistDetailModel(
    name: json['name'] as String,
    bio: BioModel.fromJson(json['bio'] as Map<String, dynamic>),
    similar:
        ArtistSimilarModel.fromJson(json['similar'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistDetailModelToJson(ArtistDetailModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bio': instance.bio,
      'similar': instance.similar,
    };
