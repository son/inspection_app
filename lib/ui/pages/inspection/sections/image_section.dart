import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/pages/inspection/children/blueprints_section_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/exterior_section_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class ImageSection extends HookConsumerWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Section(
      title: '外観・現況写真・設計図書',
      children: [
        SectionItem(
          axis: Axis.vertical,
          title: '設計図書（建物配置図・平面図・立面図など）',
          child: BlueprintsSectionItem(),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '外観、現況写真の撮影',
          child: ExteriorSectionItem(),
        ),
      ],
    );
  }
}
