import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/image_source_sheet.dart';
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
              AddImageItem(
                onTap: () async {
                  final paths = await ImageSourceSheet.show(context);
                  if (paths.isEmpty) return;
                  controller.updateBlueprints(paths);
                },
                size: size,
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
