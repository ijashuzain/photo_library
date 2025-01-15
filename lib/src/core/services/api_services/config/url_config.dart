import 'package:injectable/injectable.dart';

import '../../../di/di.dart';

part 'url.dart';

abstract class UrlConfiguration {
  getBaseUrl();
  getApiBaseUrl();
  getAccessToken();
}

@LazySingleton(as: UrlConfiguration, env: [Env.prod])
class ProductionUrlConfiguration implements UrlConfiguration {
  @override
  getApiBaseUrl() => Url.productionApiBaseUrl;

  @override
  getBaseUrl() => Url.productionBaseUrl;

  @override
  getAccessToken() => Url.productionAccessToken;
}

@LazySingleton(as: UrlConfiguration, env: [Env.dev])
class DevelopmentUrlConfiguration implements UrlConfiguration {
  @override
  getApiBaseUrl() => Url.developmentApiBaseUrl;

  @override
  getBaseUrl() => Url.developmentBaseUrl;

  @override
  getAccessToken() => Url.developmentAccessToken;
}

@LazySingleton(as: UrlConfiguration, env: [Env.local])
class LocalUrlConfiguration implements UrlConfiguration {
  @override
  getApiBaseUrl() => Url.localApiBaseUrl;

  @override
  getBaseUrl() => Url.localBaseUrl;

  @override
  getAccessToken() => Url.localAccessToken;
}
