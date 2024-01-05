// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/image_pick_provider.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class ImageSourceSheet extends HookConsumerWidget {
  const ImageSourceSheet({super.key});

  static Future<List<String>> show(BuildContext context) {
    return showModalBottomSheet<List<String>>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (_) => const ImageSourceSheet(),
    ).then((value) => value ?? []);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
        bottom: MediaQuery.paddingOf(context).bottom,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _Item(
            title: 'カメラで\n写真を撮る',
            icon: Icons.camera_rounded,
            onTap: () async {
              final image = await ref.read(cameraImagePickProvider)(context);
              if (image == null) return;
              Navigator.of(context).pop([image]);
            },
          ),
          Container(
            width: 0.5,
            height: 50,
            color: Colors.black,
          ),
          _Item(
            title: 'アルバムから\n画像を選択する',
            icon: Icons.photo,
            onTap: () async {
              final images = await ref.read(photoImagePickProvider)(context);
              if (images.isEmpty) return;
              Navigator.of(context).pop(images);
            },
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Colors.black54,
              size: 40,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: TextStyles.b12,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
