import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:photo_library/src/presentation/widgets/pinterest_grid.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<PinterestItem> items = [
      PinterestItem.withRandomAspectRatio(
        id: '1',
        imageUrl: 'https://example.com/image1.jpg',
        title: "Woman's Kalua Zip Hoodie",
        likeCount: 24,
      ),
      PinterestItem.withRandomAspectRatio(
        id: '2',
        imageUrl: 'https://example.com/image2.jpg',
        title: "Men's White Plumeria Tee",
        likeCount: 15,
      ),
      PinterestItem.withRandomAspectRatio(
        id: '1',
        imageUrl: 'https://example.com/image1.jpg',
        title: "Woman's Kalua Zip Hoodie",
        likeCount: 24,
      ),
      PinterestItem.withRandomAspectRatio(
        id: '2',
        imageUrl: 'https://example.com/image2.jpg',
        title: "Men's White Plumeria Tee",
        likeCount: 15,
      ),
      PinterestItem.withRandomAspectRatio(
        id: '1',
        imageUrl: 'https://example.com/image1.jpg',
        title: "Woman's Kalua Zip Hoodie",
        likeCount: 24,
      ),
      PinterestItem.withRandomAspectRatio(
        id: '2',
        imageUrl: 'https://example.com/image2.jpg',
        title: "Men's White Plumeria Tee",
        likeCount: 15,
      ),
      // Add more items...
    ];

    return Scaffold(
      body: Center(
        child: PinterestGrid(
          items: items,
          onItemTap: (String id) {
            // Handle item tap
            print('Tapped item with id: $id');
          },
        ),
      ),
    );
  }
}
