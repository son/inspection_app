import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/pages/image/images_page.dart';
import 'package:inspection_app/ui/pages/inspection/children/image_item.dart';

class ExteriorSectionItem extends HookConsumerWidget {
  const ExteriorSectionItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const padding = 16.0;
    final blueprints = [
      'https://image.lgtmoon.dev/223789',
      'https://image.lgtmoon.dev/223785',
      'https://image.lgtmoon.dev/223784',
      'https://image.lgtmoon.dev/223784',
      'https://image.lgtmoon.dev/223784',
      'https://image.lgtmoon.dev/223784',
      'https://image.lgtmoon.dev/223784',
      'https://image.lgtmoon.dev/223784',
    ];

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
                onTap: () {},
                size: size,
              ),
              ...blueprints
                  .map(
                    (image) => ImageItem(
                      url: image,
                      size: size,
                      onTap: () {
                        ImagesPage.show(
                          context: context,
                          images: blueprints,
                          initialIndex: blueprints.indexOf(image),
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
