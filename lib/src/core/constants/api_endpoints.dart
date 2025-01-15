import 'package:injectable/injectable.dart';
import 'package:photo_library/src/core/services/api_services/config/url_config.dart';

@singleton
class ApiEndpoints {
  final UrlConfiguration _urlConfig;

  ApiEndpoints(this._urlConfig);

  String get listPhotos => '${_urlConfig.getBaseUrl()}/photos';

}
