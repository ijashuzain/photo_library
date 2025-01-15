import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:photo_library/src/core/di/di.config.dart';

abstract class Env {
  static const String dev = "dev";
  static const String prod = "prod";
  static const String local = "local";
  static const String mock = "mock";
}

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String environment) => getIt.init(environment: environment);
