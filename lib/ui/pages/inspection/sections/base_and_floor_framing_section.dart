import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class BaseAndFloorFramingSection extends HookConsumerWidget {
  const BaseAndFloorFramingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);

    return Section(
      title: '土台、床組',
      actions: [
        MenuButton(
          onTapAllPassed: () {
            print('sss');
          },
          onTapNotApplicable: () {
            print('sss');
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          title: '（構造）柱の著しいひび割れ\n劣化、欠損',
          child: DropdownField.result(
            result: inspection.baseAndFloorFraming.damage.result,
            onSelect: (result) {
              final damage = inspection.baseAndFloorFraming.damage
                  .copyWith(result: result);
              final baseAndFloorFraming =
                  inspection.baseAndFloorFraming.copyWith(damage: damage);
              ref
                  .read(inspectionProvider.notifier)
                  .updateBaseAndFloorFraming(baseAndFloorFraming);
            },
          ),
        ),
        if (inspection.baseAndFloorFraming.damage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　最大ひび割れ幅',
            child: PrimaryTextField(
              fixedText: 'mm',
              onChange: (text) {},
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              onChange: (text) {},
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.baseAndFloorFraming.damage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem(
              value: inspection.pillarAndBeam.coverage,
              name: inspection.pillarAndBeam.coverage.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final pillarAndBeam =
                  inspection.pillarAndBeam.copyWith(coverage: coverage);
              ref
                  .read(inspectionProvider.notifier)
                  .updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            onChange: (text) {},
          ),
        ),
      ],
    );
  }
}
