import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_library/src/core/providers/providers.dart';
import 'package:photo_library/src/core/router/app_router.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return TheResponsiveBuilder(
      baselineHeight: 812,
      baselineWidth: 375,
      builder: (context, orientation, screenType) {
        return MultiBlocProvider(
          providers: kProviders,
          child: MaterialApp.router(
            routerConfig: appRouter.config(),
            title: "Photo Library",
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
