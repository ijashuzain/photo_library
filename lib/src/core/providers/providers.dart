import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_library/src/core/di/di.dart';
import 'package:photo_library/src/presentation/blocs/home_bloc/home_bloc.dart';

List<BlocProvider> kProviders = [
  BlocProvider<HomeBloc>(create: (ctx) => getIt<HomeBloc>()),
];
