import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:photo_library/gen/assets.gen.dart';
import 'package:photo_library/gen/fonts.gen.dart';
import 'package:photo_library/src/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:photo_library/src/presentation/core/status/status.dart';
import 'package:photo_library/src/presentation/widgets/pinterest_grid.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ValueNotifier<double> appBatHeightListener = ValueNotifier(0);
  final ValueNotifier<bool> isScrollingNotifier = ValueNotifier(false);
  final double topBarHeight = 72.dp;

  @override
  void initState() {
    context.read<HomeBloc>().add(HomeEvent.getPhotosEvent());
    super.initState();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification) {
      final metrics = notification.metrics;
      if (metrics.pixels >= metrics.maxScrollExtent) {
        print('Scroll ended at bottom with notification');
        // Add your load more logic here
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: const SizedBox(),
              pinned: false,
              snap: false,
              floating: true,
              backgroundColor: Colors.white,
              expandedHeight: topBarHeight,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  final double appBarHeight = constraints.biggest.height;
                  final bool isCollapsed = appBarHeight <= topBarHeight + 1;
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: topBarHeight + 4.dp,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.dp, vertical: 16.dp),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 36.dp,
                              width: 36.dp,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(Assets.images.appIcon.path),
                            ),
                            Gap(12.dp),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Photo Library',
                                  style: TextStyle(
                                    fontFamily: FontFamily.gilroy,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 0.dp, vertical: 16.dp),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  _buildImageListSection(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageListSection() {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (state.getPhotosStatus is StatusLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      final items = state.photos;
      if (items.isEmpty) {
        return const Center(child: Text('No items found'));
      }
      return PinterestGrid(
        items: state.photos.map((photo) => PinterestItem(id: photo.id, imageUrl: photo.url, title: photo.name, likeCount: photo.likes, aspectRatio: photo.aspectRatio ?? 1)).toList(),
        onItemTap: (String id) {
          print('Tapped item with id: $id');
        },
      );
    });
  }
}
