import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/image_pick_provider.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/menu_tap_gesture.dart';
import 'package:inspection_app/ui/pages/image/images_page.dart';
import 'package:inspection_app/ui/pages/inspection/children/image_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class ExteriorSectionItem extends HookConsumerWidget {
  const ExteriorSectionItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const padding = 16.0;
    final id = ref.watch(inspectionIdProvider);
    final photos =
        ref.watch(inspectionProvider(id).select((value) => value.photos));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final size = (constraints.maxWidth - padding * 3) / 4;

          return Wrap(
            spacing: padding,
            runSpacing: padding,
            children: [
              MenuTapGesture(
                items: [
                  MenuItem(
                    title: 'カメラで写真を撮る',
                    icon: const Icon(Icons.camera_rounded),
                    onTap: () async {
                      final image =
                          await ref.read(cameraImagePickProvider)(context);
                      if (image == null) return;
                      controller.updateExteriorImages([image]);
                    },
                  ),
                  MenuItem(
                    title: 'アルバムから画像を選択する',
                    icon: const Icon(Icons.photo),
                    onTap: () async {
                      final images =
                          await ref.read(photoImagePickProvider)(context);
                      if (images.isEmpty) return;
                      controller.updateExteriorImages(images);
                    },
                  ),
                ],
                child: AddImageItem(
                  onTap: () {},
                  size: size,
                ),
              ),
              ...photos
                  .map(
                    (photo) => ImageItem(
                      url: photo.image,
                      size: size,
                      onTap: () {
                        ImagesPage.show(
                          context: context,
                          images: photos.map((e) => e.image).toList(),
                          initialIndex: photos.indexOf(photo),
                          onTapDelete: (url) {
                            controller.deleteExterior(url);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                      onTapDelete: () {
                        controller.deleteExterior(photo.image);
                      },
                    ),
                  )
                  .toList(),
            ],
          );
        },
      ),
    );
  }
}
