import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_library/src/domain/models/photo_model.dart';
import 'package:photo_library/src/presentation/core/status/status.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_GetPhotosEvent>(_getPhotosEvent);
  }

  Future<void> _getPhotosEvent(_GetPhotosEvent event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(getPhotosStatus: Status.loading()));
      await Future.delayed(Duration(seconds: 2));
      var items = [
        PhotoModel(
          id: "1",
          name: "Tree Neon light",
          url: "http://example.com",
          likes: 12,
        ).copyWith(
          aspectRatio: _pinterestItemAspectRatios[Random().nextInt(_pinterestItemAspectRatios.length)],
        ),
        PhotoModel(
          id: "2",
          name: "Tree Neon light",
          url: "http://example.com",
          likes: 12,
        ).copyWith(
          aspectRatio: _pinterestItemAspectRatios[Random().nextInt(_pinterestItemAspectRatios.length)],
        ),
        PhotoModel(
          id: "3",
          name: "Tree Neon light",
          url: "http://example.com",
          likes: 12,
        ).copyWith(
          aspectRatio: _pinterestItemAspectRatios[Random().nextInt(_pinterestItemAspectRatios.length)],
        ),
        PhotoModel(
          id: "4",
          name: "Tree Neon light",
          url: "http://example.com",
          likes: 12,
        ).copyWith(
          aspectRatio: _pinterestItemAspectRatios[Random().nextInt(_pinterestItemAspectRatios.length)],
        ),
        PhotoModel(
          id: "5",
          name: "Tree Neon light",
          url: "http://example.com",
          likes: 12,
        ).copyWith(
          aspectRatio: _pinterestItemAspectRatios[Random().nextInt(_pinterestItemAspectRatios.length)],
        )
      ];

      emit(state.copyWith(getPhotosStatus: Status.success(), photos: items));
    } catch (e) {
      emit(state.copyWith(getPhotosStatus: Status.failure(e.toString())));
    }
  }
}

final List<double> _pinterestItemAspectRatios = [0.5, 0.6, 0.667, 0.75, 0.8, 0.85, 0.9, 1.0, 1.1, 1.15, 1.25, 1.333, 1.4, 1.5, 1.6, 1.667, 1.75, 1.778, 1.85, 2.0, 0.55, 0.65, 0.7, 1.9, 1.65, 1.45, 0.8, 1.91, 1.4, 1.77];
