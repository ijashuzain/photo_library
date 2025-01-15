import 'package:photo_library/src/domain/models/pagination_model/pagination_model.dart';
import 'package:photo_library/src/domain/models/photo_model/photo_model.dart';

abstract class PhotosRepository {
  Future<List<PhotoModel>> getPhotos(Pagination pagination);
}