import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class PhotoModel with _$PhotoModel {
  const factory PhotoModel({
    @Default("") @JsonKey(name: 'id') String id,
    @Default("") @JsonKey(name: 'description') String description,
    @Default("") @JsonKey(name: 'alt_description') String altDescription,
    @Default("") @JsonKey(name: 'created_at') String createdAt,
    @Default("") @JsonKey(name: 'updated_at') String updatedAt,
    @Default("") @JsonKey(name: 'color') String color,
    @Default(Urls()) @JsonKey(name: 'urls') Urls urls,
    @Default(Links()) @JsonKey(name: 'links') Links links,
    @Default(0) @JsonKey(name: 'likes') int likes,
    @Default(1) @JsonKey(name: 'aspect_ratio') double aspectRatio,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);
}

@freezed
class Urls with _$Urls {
  const factory Urls({
    @Default("") @JsonKey(name: 'raw') String raw,
    @Default("") @JsonKey(name: 'full') String full,
    @Default("") @JsonKey(name: 'regular') String regular,
    @Default("") @JsonKey(name: 'small') String small,
    @Default("") @JsonKey(name: 'thumb') String thumb,
    @Default("") @JsonKey(name: 'small_s3') String smallS3,
  }) = _Urls;

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    @Default("") @JsonKey(name: 'self') String self,
    @Default("") @JsonKey(name: 'html') String html,
    @Default("") @JsonKey(name: 'download') String download,
    @Default("") @JsonKey(name: 'download_location') String downloadLocation,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
