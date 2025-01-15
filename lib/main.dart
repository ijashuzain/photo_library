import 'package:flutter/material.dart';
import 'package:photo_library/src/core/app.dart';
import 'package:photo_library/src/core/di/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Env.dev);

  runApp( MyApp());
}
