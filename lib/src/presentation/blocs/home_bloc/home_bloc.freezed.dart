// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  bool get isLoadMore => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore) getPhotosEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore)? getPhotosEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore)? getPhotosEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotosEvent value) getPhotosEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPhotosEvent value)? getPhotosEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotosEvent value)? getPhotosEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({bool isLoadMore});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
  }) {
    return _then(_value.copyWith(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPhotosEventImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$GetPhotosEventImplCopyWith(_$GetPhotosEventImpl value,
          $Res Function(_$GetPhotosEventImpl) then) =
      __$$GetPhotosEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoadMore});
}

/// @nodoc
class __$$GetPhotosEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetPhotosEventImpl>
    implements _$$GetPhotosEventImplCopyWith<$Res> {
  __$$GetPhotosEventImplCopyWithImpl(
      _$GetPhotosEventImpl _value, $Res Function(_$GetPhotosEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
  }) {
    return _then(_$GetPhotosEventImpl(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetPhotosEventImpl implements _GetPhotosEvent {
  const _$GetPhotosEventImpl({this.isLoadMore = false});

  @override
  @JsonKey()
  final bool isLoadMore;

  @override
  String toString() {
    return 'HomeEvent.getPhotosEvent(isLoadMore: $isLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhotosEventImpl &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadMore);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhotosEventImplCopyWith<_$GetPhotosEventImpl> get copyWith =>
      __$$GetPhotosEventImplCopyWithImpl<_$GetPhotosEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore) getPhotosEvent,
  }) {
    return getPhotosEvent(isLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore)? getPhotosEvent,
  }) {
    return getPhotosEvent?.call(isLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore)? getPhotosEvent,
    required TResult orElse(),
  }) {
    if (getPhotosEvent != null) {
      return getPhotosEvent(isLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotosEvent value) getPhotosEvent,
  }) {
    return getPhotosEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPhotosEvent value)? getPhotosEvent,
  }) {
    return getPhotosEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotosEvent value)? getPhotosEvent,
    required TResult orElse(),
  }) {
    if (getPhotosEvent != null) {
      return getPhotosEvent(this);
    }
    return orElse();
  }
}

abstract class _GetPhotosEvent implements HomeEvent {
  const factory _GetPhotosEvent({final bool isLoadMore}) = _$GetPhotosEventImpl;

  @override
  bool get isLoadMore;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPhotosEventImplCopyWith<_$GetPhotosEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  Status get getPhotosStatus => throw _privateConstructorUsedError;
  List<PhotoModel> get photos => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Status getPhotosStatus, List<PhotoModel> photos, Pagination pagination});

  $StatusCopyWith<$Res> get getPhotosStatus;
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhotosStatus = null,
    Object? photos = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      getPhotosStatus: null == getPhotosStatus
          ? _value.getPhotosStatus
          : getPhotosStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get getPhotosStatus {
    return $StatusCopyWith<$Res>(_value.getPhotosStatus, (value) {
      return _then(_value.copyWith(getPhotosStatus: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status getPhotosStatus, List<PhotoModel> photos, Pagination pagination});

  @override
  $StatusCopyWith<$Res> get getPhotosStatus;
  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPhotosStatus = null,
    Object? photos = null,
    Object? pagination = null,
  }) {
    return _then(_$HomeStateImpl(
      getPhotosStatus: null == getPhotosStatus
          ? _value.getPhotosStatus
          : getPhotosStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.getPhotosStatus,
      required final List<PhotoModel> photos,
      required this.pagination})
      : _photos = photos;

  @override
  final Status getPhotosStatus;
  final List<PhotoModel> _photos;
  @override
  List<PhotoModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final Pagination pagination;

  @override
  String toString() {
    return 'HomeState(getPhotosStatus: $getPhotosStatus, photos: $photos, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.getPhotosStatus, getPhotosStatus) ||
                other.getPhotosStatus == getPhotosStatus) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getPhotosStatus,
      const DeepCollectionEquality().hash(_photos), pagination);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final Status getPhotosStatus,
      required final List<PhotoModel> photos,
      required final Pagination pagination}) = _$HomeStateImpl;

  @override
  Status get getPhotosStatus;
  @override
  List<PhotoModel> get photos;
  @override
  Pagination get pagination;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
