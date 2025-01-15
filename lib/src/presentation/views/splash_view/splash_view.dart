import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:photo_library/gen/assets.gen.dart';
import 'package:photo_library/src/core/router/app_router.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _navigate();
    });
    super.initState();
  }

  void _navigate() async {
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replace(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 120.dp,
          child: Image.asset(
            Assets.images.appIcon.path,
          ),
        ),
      ),
    );
  }
}
