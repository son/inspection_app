import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inspection_app/ui/components/menu_tap_gesture.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    required this.url,
    required this.size,
    required this.onTap,
    required this.onTapDelete,
  });

  final String url;
  final double size;
  final Function() onTap;
  final Function() onTapDelete;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
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
        ),
        Positioned(
          top: -9,
          right: -9,
          child: MenuTapGesture(
            items: [
              MenuItem(
                icon: const Icon(
                  Icons.delete_rounded,
                  color: Colors.redAccent,
                  size: 18,
                ),
                title: '削除する',
                destructive: true,
                onTap: onTapDelete,
              ),
              MenuItem(
                icon: const Icon(
                  Icons.close_rounded,
                  size: 18,
                ),
                title: '戻る',
                onTap: () {},
              ),
            ],
            child: Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(36),
              ),
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.close_rounded,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
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
      onTap: onTap,
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
