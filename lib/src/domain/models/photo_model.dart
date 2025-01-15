import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class PhotoModel with _$PhotoModel{
  const factory PhotoModel({
    required String id,
    required String name,
    required String url,
    required int likes,
    double? aspectRatio,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) => _$PhotoModelFromJson(json);
}