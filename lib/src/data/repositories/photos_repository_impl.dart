import 'dart:math';

import 'package:photo_library/src/core/constants/api_endpoints.dart';
import 'package:photo_library/src/core/services/api_services/api_service.dart';
import 'package:photo_library/src/domain/models/pagination_model/pagination_model.dart';
import 'package:photo_library/src/domain/models/photo_model/photo_model.dart';
import 'package:photo_library/src/domain/repositories/photos_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PhotosRepository)
class PhotosRepositoryImpl implements PhotosRepository {
  final Api api;
  final ApiEndpoints endpoints;

  PhotosRepositoryImpl(this.api, this.endpoints);

  @override
  Future<List<PhotoModel>> getPhotos(Pagination pagination) async {
    var response = await api.profile.get(endpoints.listPhotos, queryParameters: pagination.toJson());
    return (response.data as List).map((e) => PhotoModel.fromJson(e).copyWith(aspectRatio: _pinterestItemAspectRatios[Random().nextInt(_pinterestItemAspectRatios.length)])).toList();
  }
}

final List<double> _pinterestItemAspectRatios = [0.5, 0.6, 0.667, 0.75, 0.8, 0.85, 0.9, 1.0, 1.1, 1.15, 1.25, 1.333, 1.4, 1.5, 1.6, 1.667, 1.75, 1.778, 1.85, 2.0, 0.55, 0.65, 0.7, 1.9, 1.65, 1.45, 0.8, 1.91, 1.4, 1.77];
