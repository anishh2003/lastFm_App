import 'package:json_annotation/json_annotation.dart';

part 'album_wiki_model.g.dart';

@JsonSerializable()
class AlbumWikiModel {
  String summary;

  AlbumWikiModel({
    required this.summary,
  });

  factory AlbumWikiModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumWikiModelFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumWikiModelToJson(this);
}
