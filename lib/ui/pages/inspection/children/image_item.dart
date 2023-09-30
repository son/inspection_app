import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../components/image_source_sheet.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    required this.url,
    required this.size,
    required this.onTap,
  });

  final String url;
  final double size;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.cover,
          width: size,
          height: size,
          placeholder: (_, __) => Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: SizedBox(
                width: 26,
                height: 26,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.transparent,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          errorWidget: (_, __, ___) => Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Icon(
                Icons.error_outline_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddImageItem extends StatelessWidget {
  const AddImageItem({super.key, required this.onTap, required this.size});

  final Function() onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ImageSourceSheet.show(context);
      },
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
