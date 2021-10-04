import 'package:json_annotation/json_annotation.dart';

part 'artist_detail_bio_model.g.dart';

@JsonSerializable()
class BioModel {
  String summary;

  BioModel({
    required this.summary,
  });

  factory BioModel.fromJson(Map<String, dynamic> json) =>
      _$BioModelFromJson(json);
  Map<String, dynamic> toJson() => _$BioModelToJson(this);
}
