import 'dart:typed_data';
import 'dart:ui';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_library/gen/assets.gen.dart';
import 'package:photo_library/gen/fonts.gen.dart';
import 'package:photo_library/src/domain/models/photo_model/photo_model.dart';
import 'package:photo_library/src/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:photo_library/src/presentation/core/status/status.dart';
import 'package:photo_library/src/presentation/views/home_view/widgets/photo_detail_dialog.dart';
import 'package:photo_library/src/presentation/widgets/pinterest_grid.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'package:http/http.dart' as http;

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
                padding: EdgeInsets.symmetric(vertical: 16.dp),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    _buildPhotoListSection(),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoListSection() {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (state.getPhotosStatus is StatusLoading) {
        return Padding(padding: EdgeInsets.only(top: 50.h - 90.dp), child: Center(child: CircularProgressIndicator()));
      }
      final items = state.photos;
      if (items.isEmpty) {
        return Padding(
          padding: EdgeInsets.only(top: 50.h - 90.dp),
          child: const Center(child: Text('No items found')),
        );
      }
      return PhotoGrid(
        items: state.photos
            .map((photo) => PhotoItem(
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
        return PhotoDetailDialog(
            photo: photo,
            onDownload: () {
              _downloadPhoto(photo.links.download);
            });
      },
    );
  }

  void _downloadPhoto(String url) async {
    await Permission.storage.request();

    try {
      Fluttertoast.showToast(
        msg: "Downloading photo...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
      );
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Uint8List imageData = response.bodyBytes;

        final result = await ImageGallerySaverPlus.saveImage(
          imageData,
          quality: 100,
          name: "photo_${DateTime.now().millisecondsSinceEpoch}",
        );

        if (result['isSuccess'] == true) {
          Fluttertoast.showToast(
            msg: "Photo saved to gallery!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.blueAccent,
            textColor: Colors.white,
          );
        } else {
          Fluttertoast.showToast(
            msg: "Failed to save photo.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
          );
        }
      } else {
        Fluttertoast.showToast(
          msg: "Failed to download photo.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "An error occurred: $e",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
    }
  }
}
