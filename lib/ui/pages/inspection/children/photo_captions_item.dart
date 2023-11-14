import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inspection_app/data/entities/photo/photo.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class PhotoCaptionsItem extends StatelessWidget {
  const PhotoCaptionsItem({
    super.key,
    required this.photos,
    required this.onChange,
    required this.onTapAdd,
  });

  final List<Photo> photos;
  final Function(List<Photo>) onChange;
  final Function() onTapAdd;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = (constraints.maxWidth - 16 * 3) / 4;
        return Column(
          children: [
            _AddItem(
              onTap: onTapAdd,
            ),
            ...photos
                .map((photo) => _Item(
                      photo: photo,
                      size: size,
                    ))
                .toList(),
          ],
        );
      },
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.photo, required this.size});

  final Photo photo;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: photo.image,
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
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

class _AddItem extends StatelessWidget {
  const _AddItem({required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.add_rounded,
              color: Colors.blue,
              size: 20,
            ),
            const SizedBox(width: 4),
            Text(
              'タップして画像と説明を追加する',
              style: TextStyles.n14.copyWith(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
