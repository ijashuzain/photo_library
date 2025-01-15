import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_library/src/core/providers/providers.dart';
import 'package:photo_library/src/core/router/app_router.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRouter = AppRouter();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((val){
      context.lockToPortrait();
    });
    super.initState();
  }

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
