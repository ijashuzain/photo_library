import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:photo_library/gen/assets.gen.dart';
import 'package:photo_library/gen/fonts.gen.dart';
import 'package:photo_library/src/domain/models/photo_model/photo_model.dart';
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
        context.read<HomeBloc>().add(HomeEvent.getPhotosEvent(isLoadMore: true));
      }
    }
    return false;
  }

  Future<void> _handleRefresh() async {
    context.read<HomeBloc>().add(HomeEvent.getPhotosEvent());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: RefreshIndicator(
          onRefresh: _handleRefresh,
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
      ),
    );
  }

  Widget _buildImageListSection() {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (state.getPhotosStatus is StatusLoading) {
        return  Padding(
            padding: EdgeInsets.only(top: 50.h - 90.dp),
            child: Center(child: CircularProgressIndicator()));
      }
      final items = state.photos; 
      if (items.isEmpty) {
        return const Center(child: Text('No items found'));
      }
      return PinterestGrid(
        items: state.photos
            .map((photo) => PinterestItem(
                id: photo.id, imageUrl: photo.urls.smallS3.isNotEmpty ? photo.urls.smallS3 : photo.urls.small, title: photo.description.isNotEmpty ? photo.description : photo.altDescription, likeCount: photo.likes, aspectRatio: photo.aspectRatio))
            .toList(),
        onItemTap: (String id) {
          final photo = items.firstWhere((item) => item.id == id);
          _showImageDialog(context, photo);
        },
      );
    });
  }


  void _showImageDialog(BuildContext context, PhotoModel photo) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Blurred background
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            // Dialog content
            Center(
              child: AnimatedScale(
                scale: 1.0,
                duration: const Duration(milliseconds: 300),
                child: Dialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: EdgeInsets.all(16.dp),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      // Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.dp),
                        child: Image.network(
                          photo.urls.smallS3.isNotEmpty ? photo.urls.smallS3 : photo.urls.small,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[200],
                              child: Center(
                                child: Icon(
                                  Icons.image_not_supported,
                                  color: Colors.grey,
                                  size: 40.dp,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // Close button
                      Positioned(
                        top: 16.dp,
                        right: 16.dp,
                        child: FloatingActionButton(
                          mini: true,
                          onPressed: () => Navigator.of(context).pop(),
                          backgroundColor: Colors.white,
                          child: const Icon(Icons.close, color: Colors.black),
                        ),
                      ),
                      // Download button
                      Positioned(
                        bottom: 16.dp,
                        right: 16.dp,
                        child: FloatingActionButton(
                          mini: true,
                          onPressed: () {
                            _downloadImage(photo.links.download);
                          },
                          backgroundColor: Colors.white,
                          child: const Icon(Icons.download, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _downloadImage(String imageUrl) {
    // Add logic to download the image
    print('Downloading image: $imageUrl');
  }

}
