import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
                      onChange: (photo) {
                        final index = photos.indexWhere(
                          (p) => p.image == photo.image,
                        );
                        if (index == -1) return;
                        final newPhotos = [...photos];
                        newPhotos[index] = photo;
                        onChange(newPhotos);
                      },
                    ))
                .toList(),
          ],
        );
      },
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.photo,
    required this.onChange,
    required this.size,
  });

  final Photo photo;
  final double size;
  final Function(Photo) onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Expanded(
            child: _TextField(
              initialText: photo.caption,
              onChange: (text) => onChange(photo.copyWith(caption: text)),
            ),
          ),
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

class _TextField extends HookConsumerWidget {
  const _TextField({required this.initialText, required this.onChange});
  final String initialText;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    useEffect(() {
      controller.text = initialText;
      return null;
    }, []);

    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    );

    return TextField(
      controller: controller,
      style: TextStyles.n14,
      minLines: 1,
      maxLines: null,
      onChanged: onChange,
      cursorColor: Colors.blueAccent,
      decoration: InputDecoration(
        hintText: '説明を追加',
        hintStyle: TextStyles.n12.copyWith(color: Colors.grey),
        enabledBorder: border,
        focusedBorder: border,
        disabledBorder: border,
        border: border,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        focusColor: const Color(0xFFF2F7FF),
        hoverColor: const Color(0xFFF2F7FF),
        fillColor: const Color(0xFFF2F7FF),
        filled: true,
      ),
    );
  }
}
