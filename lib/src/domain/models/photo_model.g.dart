// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoModelImpl _$$PhotoModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotoModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      likes: (json['likes'] as num).toInt(),
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PhotoModelImplToJson(_$PhotoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'likes': instance.likes,
      'aspectRatio': instance.aspectRatio,
    };
