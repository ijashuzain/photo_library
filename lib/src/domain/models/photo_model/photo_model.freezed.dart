// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_description')
  String get altDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'urls')
  Urls get urls => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  Links get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes')
  int get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'aspect_ratio')
  double get aspectRatio => throw _privateConstructorUsedError;

  /// Serializes this PhotoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res, PhotoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'alt_description') String altDescription,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'urls') Urls urls,
      @JsonKey(name: 'links') Links links,
      @JsonKey(name: 'likes') int likes,
      @JsonKey(name: 'aspect_ratio') double aspectRatio});

  $UrlsCopyWith<$Res> get urls;
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res, $Val extends PhotoModel>
    implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? altDescription = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? color = null,
    Object? urls = null,
    Object? links = null,
    Object? likes = null,
    Object? aspectRatio = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      altDescription: null == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoModelImplCopyWith<$Res>
    implements $PhotoModelCopyWith<$Res> {
  factory _$$PhotoModelImplCopyWith(
          _$PhotoModelImpl value, $Res Function(_$PhotoModelImpl) then) =
      __$$PhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'alt_description') String altDescription,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'color') String color,
      @JsonKey(name: 'urls') Urls urls,
      @JsonKey(name: 'links') Links links,
      @JsonKey(name: 'likes') int likes,
      @JsonKey(name: 'aspect_ratio') double aspectRatio});

  @override
  $UrlsCopyWith<$Res> get urls;
  @override
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$PhotoModelImplCopyWithImpl<$Res>
    extends _$PhotoModelCopyWithImpl<$Res, _$PhotoModelImpl>
    implements _$$PhotoModelImplCopyWith<$Res> {
  __$$PhotoModelImplCopyWithImpl(
      _$PhotoModelImpl _value, $Res Function(_$PhotoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? altDescription = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? color = null,
    Object? urls = null,
    Object? links = null,
    Object? likes = null,
    Object? aspectRatio = null,
  }) {
    return _then(_$PhotoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      altDescription: null == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoModelImpl implements _PhotoModel {
  const _$PhotoModelImpl(
      {@JsonKey(name: 'id') this.id = "",
      @JsonKey(name: 'description') this.description = "",
      @JsonKey(name: 'alt_description') this.altDescription = "",
      @JsonKey(name: 'created_at') this.createdAt = "",
      @JsonKey(name: 'updated_at') this.updatedAt = "",
      @JsonKey(name: 'color') this.color = "",
      @JsonKey(name: 'urls') this.urls = const Urls(),
      @JsonKey(name: 'links') this.links = const Links(),
      @JsonKey(name: 'likes') this.likes = 0,
      @JsonKey(name: 'aspect_ratio') this.aspectRatio = 1});

  factory _$PhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'alt_description')
  final String altDescription;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'color')
  final String color;
  @override
  @JsonKey(name: 'urls')
  final Urls urls;
  @override
  @JsonKey(name: 'links')
  final Links links;
  @override
  @JsonKey(name: 'likes')
  final int likes;
  @override
  @JsonKey(name: 'aspect_ratio')
  final double aspectRatio;

  @override
  String toString() {
    return 'PhotoModel(id: $id, description: $description, altDescription: $altDescription, createdAt: $createdAt, updatedAt: $updatedAt, color: $color, urls: $urls, links: $links, likes: $likes, aspectRatio: $aspectRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.altDescription, altDescription) ||
                other.altDescription == altDescription) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, altDescription,
      createdAt, updatedAt, color, urls, links, likes, aspectRatio);

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      __$$PhotoModelImplCopyWithImpl<_$PhotoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoModel implements PhotoModel {
  const factory _PhotoModel(
          {@JsonKey(name: 'id') final String id,
          @JsonKey(name: 'description') final String description,
          @JsonKey(name: 'alt_description') final String altDescription,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt,
          @JsonKey(name: 'color') final String color,
          @JsonKey(name: 'urls') final Urls urls,
          @JsonKey(name: 'links') final Links links,
          @JsonKey(name: 'likes') final int likes,
          @JsonKey(name: 'aspect_ratio') final double aspectRatio}) =
      _$PhotoModelImpl;

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$PhotoModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'alt_description')
  String get altDescription;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'color')
  String get color;
  @override
  @JsonKey(name: 'urls')
  Urls get urls;
  @override
  @JsonKey(name: 'links')
  Links get links;
  @override
  @JsonKey(name: 'likes')
  int get likes;
  @override
  @JsonKey(name: 'aspect_ratio')
  double get aspectRatio;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return _Urls.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  @JsonKey(name: 'raw')
  String get raw => throw _privateConstructorUsedError;
  @JsonKey(name: 'full')
  String get full => throw _privateConstructorUsedError;
  @JsonKey(name: 'regular')
  String get regular => throw _privateConstructorUsedError;
  @JsonKey(name: 'small')
  String get small => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumb')
  String get thumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_s3')
  String get smallS3 => throw _privateConstructorUsedError;

  /// Serializes this Urls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Urls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) =
      _$UrlsCopyWithImpl<$Res, Urls>;
  @useResult
  $Res call(
      {@JsonKey(name: 'raw') String raw,
      @JsonKey(name: 'full') String full,
      @JsonKey(name: 'regular') String regular,
      @JsonKey(name: 'small') String small,
      @JsonKey(name: 'thumb') String thumb,
      @JsonKey(name: 'small_s3') String smallS3});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res, $Val extends Urls>
    implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Urls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
    Object? smallS3 = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      smallS3: null == smallS3
          ? _value.smallS3
          : smallS3 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlsImplCopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$UrlsImplCopyWith(
          _$UrlsImpl value, $Res Function(_$UrlsImpl) then) =
      __$$UrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'raw') String raw,
      @JsonKey(name: 'full') String full,
      @JsonKey(name: 'regular') String regular,
      @JsonKey(name: 'small') String small,
      @JsonKey(name: 'thumb') String thumb,
      @JsonKey(name: 'small_s3') String smallS3});
}

/// @nodoc
class __$$UrlsImplCopyWithImpl<$Res>
    extends _$UrlsCopyWithImpl<$Res, _$UrlsImpl>
    implements _$$UrlsImplCopyWith<$Res> {
  __$$UrlsImplCopyWithImpl(_$UrlsImpl _value, $Res Function(_$UrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Urls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
    Object? smallS3 = null,
  }) {
    return _then(_$UrlsImpl(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      smallS3: null == smallS3
          ? _value.smallS3
          : smallS3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsImpl implements _Urls {
  const _$UrlsImpl(
      {@JsonKey(name: 'raw') this.raw = "",
      @JsonKey(name: 'full') this.full = "",
      @JsonKey(name: 'regular') this.regular = "",
      @JsonKey(name: 'small') this.small = "",
      @JsonKey(name: 'thumb') this.thumb = "",
      @JsonKey(name: 'small_s3') this.smallS3 = ""});

  factory _$UrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsImplFromJson(json);

  @override
  @JsonKey(name: 'raw')
  final String raw;
  @override
  @JsonKey(name: 'full')
  final String full;
  @override
  @JsonKey(name: 'regular')
  final String regular;
  @override
  @JsonKey(name: 'small')
  final String small;
  @override
  @JsonKey(name: 'thumb')
  final String thumb;
  @override
  @JsonKey(name: 'small_s3')
  final String smallS3;

  @override
  String toString() {
    return 'Urls(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb, smallS3: $smallS3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.smallS3, smallS3) || other.smallS3 == smallS3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, raw, full, regular, small, thumb, smallS3);

  /// Create a copy of Urls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsImplCopyWith<_$UrlsImpl> get copyWith =>
      __$$UrlsImplCopyWithImpl<_$UrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsImplToJson(
      this,
    );
  }
}

abstract class _Urls implements Urls {
  const factory _Urls(
      {@JsonKey(name: 'raw') final String raw,
      @JsonKey(name: 'full') final String full,
      @JsonKey(name: 'regular') final String regular,
      @JsonKey(name: 'small') final String small,
      @JsonKey(name: 'thumb') final String thumb,
      @JsonKey(name: 'small_s3') final String smallS3}) = _$UrlsImpl;

  factory _Urls.fromJson(Map<String, dynamic> json) = _$UrlsImpl.fromJson;

  @override
  @JsonKey(name: 'raw')
  String get raw;
  @override
  @JsonKey(name: 'full')
  String get full;
  @override
  @JsonKey(name: 'regular')
  String get regular;
  @override
  @JsonKey(name: 'small')
  String get small;
  @override
  @JsonKey(name: 'thumb')
  String get thumb;
  @override
  @JsonKey(name: 'small_s3')
  String get smallS3;

  /// Create a copy of Urls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlsImplCopyWith<_$UrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  @JsonKey(name: 'self')
  String get self => throw _privateConstructorUsedError;
  @JsonKey(name: 'html')
  String get html => throw _privateConstructorUsedError;
  @JsonKey(name: 'download')
  String get download => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_location')
  String get downloadLocation => throw _privateConstructorUsedError;

  /// Serializes this Links to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {@JsonKey(name: 'self') String self,
      @JsonKey(name: 'html') String html,
      @JsonKey(name: 'download') String download,
      @JsonKey(name: 'download_location') String downloadLocation});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? html = null,
    Object? download = null,
    Object? downloadLocation = null,
  }) {
    return _then(_value.copyWith(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String,
      downloadLocation: null == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'self') String self,
      @JsonKey(name: 'html') String html,
      @JsonKey(name: 'download') String download,
      @JsonKey(name: 'download_location') String downloadLocation});
}

/// @nodoc
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? html = null,
    Object? download = null,
    Object? downloadLocation = null,
  }) {
    return _then(_$LinksImpl(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String,
      downloadLocation: null == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksImpl implements _Links {
  const _$LinksImpl(
      {@JsonKey(name: 'self') this.self = "",
      @JsonKey(name: 'html') this.html = "",
      @JsonKey(name: 'download') this.download = "",
      @JsonKey(name: 'download_location') this.downloadLocation = ""});

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

  @override
  @JsonKey(name: 'self')
  final String self;
  @override
  @JsonKey(name: 'html')
  final String html;
  @override
  @JsonKey(name: 'download')
  final String download;
  @override
  @JsonKey(name: 'download_location')
  final String downloadLocation;

  @override
  String toString() {
    return 'Links(self: $self, html: $html, download: $download, downloadLocation: $downloadLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.downloadLocation, downloadLocation) ||
                other.downloadLocation == downloadLocation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, self, html, download, downloadLocation);

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links(
          {@JsonKey(name: 'self') final String self,
          @JsonKey(name: 'html') final String html,
          @JsonKey(name: 'download') final String download,
          @JsonKey(name: 'download_location') final String downloadLocation}) =
      _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  @JsonKey(name: 'self')
  String get self;
  @override
  @JsonKey(name: 'html')
  String get html;
  @override
  @JsonKey(name: 'download')
  String get download;
  @override
  @JsonKey(name: 'download_location')
  String get downloadLocation;

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
