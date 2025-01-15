import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'dart:math';

import 'package:the_responsive_builder/the_responsive_builder.dart';

class PinterestItem {
  final String id;
  final String imageUrl;
  final String title;
  final int likeCount;
  final double aspectRatio;

  PinterestItem({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.likeCount,
    required this.aspectRatio,
  });

  factory PinterestItem.withRandomAspectRatio({
    required String id,
    required String imageUrl,
    required String title,
    required int likeCount,
  }) {
    return PinterestItem(
      id: id,
      imageUrl: imageUrl,
      title: title,
      likeCount: likeCount,
      aspectRatio: _aspectRatios[Random().nextInt(_aspectRatios.length)],
    );
  }

  static final List<double> _aspectRatios = [
    0.5,
    0.6,
    0.667,
    0.75,
    0.8,
    0.85,
    0.9,
    1.0,
    1.1,
    1.15,
    1.25,
    1.333,
    1.4,
    1.5,
    1.6,
    1.667,
    1.75,
    1.778,
    1.85,
    2.0,
    0.55,
    0.65,
    0.7,
    1.9,
    1.65,
    1.45,
    0.8,
    1.91,
    1.4,
    1.77,
  ];
}

class PinterestGrid extends StatelessWidget {
  final List<PinterestItem> items;
  final Function(String) onItemTap;
  final ScrollController? scrollController;

  const PinterestGrid({
    Key? key,
    required this.items,
    required this.onItemTap,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      controller: scrollController,
      itemCount: items.length,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: () => onItemTap(item.id),
          child: Card(
            color: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:  BorderRadius.all(
                     Radius.circular(12.dp),
                  ),
                  child: AspectRatio(
                    aspectRatio: item.aspectRatio,
                    child: Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          color: Colors.grey[200],
                          child: Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[200],
                          child:  Center(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              item.title,
                              style:  TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Gap(4.dp),
                          const Icon(
                            Icons.more_horiz,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            size: 16,
                            color: Colors.grey,
                          ),
                          Gap(4.dp),
                          Text(
                            '${item.likeCount}',
                            style:  TextStyle(
                              fontSize: 10.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}