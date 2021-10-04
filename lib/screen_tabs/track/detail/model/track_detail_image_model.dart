import 'package:json_annotation/json_annotation.dart';

part 'track_detail_image_model.g.dart';

@JsonSerializable()
class ImageModel {
  @JsonKey(name: '#text')
  final String name;
  String size;

  ImageModel({
    required this.name,
    required this.size,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
