import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/image_pick_provider.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/menu_tap_gesture.dart';
import 'package:inspection_app/ui/pages/image/images_page.dart';
import 'package:inspection_app/ui/pages/inspection/children/image_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class BlueprintsSectionItem extends HookConsumerWidget {
  const BlueprintsSectionItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const padding = 16.0;
    final id = ref.watch(inspectionIdProvider);
    final blueprints =
        ref.watch(inspectionProvider(id).select((value) => value.blueprints));
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
              ...blueprints
                  .map(
                    (blueprint) => ImageItem(
                      url: blueprint.image,
                      size: size,
                      onTap: () {
                        ImagesPage.show(
                          context: context,
                          images: blueprints.map((e) => e.image).toList(),
                          initialIndex: blueprints.indexOf(blueprint),
                          onTapDelete: (url) {
                            controller.deleteBlueprint(url);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                      onTapDelete: () {
                        controller.deleteExterior(blueprint.image);
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
