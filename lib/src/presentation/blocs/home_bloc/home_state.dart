part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Status getPhotosStatus,
    required List<PhotoModel> photos,
    required Pagination pagination,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        getPhotosStatus: Status.initial(),
        photos: [],
        pagination: Pagination(),
      );
}
