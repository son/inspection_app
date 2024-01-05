import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/image_source_sheet.dart';
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
              AddImageItem(
                onTap: () async {
                  final paths = await ImageSourceSheet.show(context);
                  if (paths.isEmpty) return;
                  controller.updatePhotos(paths);
                },
                size: size,
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
                            controller.deletePhoto(url);
                            Navigator.of(context).pop();
                          },
                        );
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
