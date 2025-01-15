part of 'url_config.dart';

class Url {
  static const String _prodBaseUrl = 'https://api.unsplash.com';
  static const String _devBaseUrl = 'https://api.unsplash.com';
  static const String _localBaseUrl = 'http://localhost';


  static String get productionBaseUrl => _prodBaseUrl;
  static String get developmentBaseUrl => _devBaseUrl;
  static String get localBaseUrl => _localBaseUrl;

  static String get productionApiBaseUrl => _prodBaseUrl;
  static String get developmentApiBaseUrl => _devBaseUrl;
  static String get localApiBaseUrl => _localBaseUrl;

  static String get productionAccessToken => 'jx2YBzcAZISLmxcUIZ51LL7ZF1Dm7-7aCrtCIOoUTsA';
  static String get developmentAccessToken => 'jx2YBzcAZISLmxcUIZ51LL7ZF1Dm7-7aCrtCIOoUTsA';
  static String get localAccessToken => '';
}
