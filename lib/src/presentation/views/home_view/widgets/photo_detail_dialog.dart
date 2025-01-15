import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:photo_library/src/domain/models/photo_model/photo_model.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class PhotoDetailDialog extends StatelessWidget {
  const PhotoDetailDialog({super.key, required this.photo, required this.onDownload});

  final PhotoModel photo;
  final VoidCallback onDownload;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
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
                  Positioned(
                    bottom: 16.dp,
                    right: 16.dp,
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        onDownload();
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
  }
}
