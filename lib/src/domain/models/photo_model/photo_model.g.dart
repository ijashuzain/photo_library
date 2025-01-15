// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoModelImpl _$$PhotoModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotoModelImpl(
      id: json['id'] as String? ?? "",
      description: json['description'] as String? ?? "",
      altDescription: json['alt_description'] as String? ?? "",
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
      color: json['color'] as String? ?? "",
      urls: json['urls'] == null
          ? const Urls()
          : Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: json['links'] == null
          ? const Links()
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$$PhotoModelImplToJson(_$PhotoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'alt_description': instance.altDescription,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'color': instance.color,
      'urls': instance.urls,
      'links': instance.links,
      'likes': instance.likes,
      'aspect_ratio': instance.aspectRatio,
    };

_$UrlsImpl _$$UrlsImplFromJson(Map<String, dynamic> json) => _$UrlsImpl(
      raw: json['raw'] as String? ?? "",
      full: json['full'] as String? ?? "",
      regular: json['regular'] as String? ?? "",
      small: json['small'] as String? ?? "",
      thumb: json['thumb'] as String? ?? "",
      smallS3: json['small_s3'] as String? ?? "",
    );

Map<String, dynamic> _$$UrlsImplToJson(_$UrlsImpl instance) =>
    <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
      'small_s3': instance.smallS3,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      self: json['self'] as String? ?? "",
      html: json['html'] as String? ?? "",
      download: json['download'] as String? ?? "",
      downloadLocation: json['download_location'] as String? ?? "",
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'download_location': instance.downloadLocation,
    };
