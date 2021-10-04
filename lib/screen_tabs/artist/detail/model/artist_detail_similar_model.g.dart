// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_detail_similar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistSimilarModel _$ArtistSimilarModelFromJson(Map<String, dynamic> json) {
  return ArtistSimilarModel(
    artist: (json['artist'] as List<dynamic>)
        .map((e) => ArtistsInfoModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ArtistSimilarModelToJson(ArtistSimilarModel instance) =>
    <String, dynamic>{
      'artist': instance.artist,
    };
