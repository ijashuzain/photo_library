import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_library/src/domain/models/pagination_model/pagination_model.dart';
import 'package:photo_library/src/domain/models/photo_model/photo_model.dart';
import 'package:photo_library/src/domain/repositories/photos_repository.dart';
import 'package:photo_library/src/presentation/core/status/status.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PhotosRepository photosRepository;

  HomeBloc(this.photosRepository) : super(HomeState.initial()) {
    on<_GetPhotosEvent>(_getPhotosEvent);
  }

  Future<void> _getPhotosEvent(_GetPhotosEvent event, Emitter<HomeState> emit) async {
    try {
      if (!event.isLoadMore) emit(state.copyWith(getPhotosStatus: Status.loading()));
      List<PhotoModel> photos = await photosRepository.getPhotos(state.pagination);
      emit(state.copyWith(getPhotosStatus: Status.success(), photos: event.isLoadMore ? [...state.photos, ...photos] : photos, pagination: event.isLoadMore ? state.pagination.copyWith(page: state.pagination.page + 1) : state.pagination));
    } catch (e) {
      emit(state.copyWith(getPhotosStatus: Status.failure(e.toString())));
    }
  }
}
