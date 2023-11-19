import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/ceiling/ceiling.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class CeilingSection extends HookConsumerWidget {
  const CeilingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);

    return Section(
      title: '天井',
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
          title: '天井点検口の有無',
          child: DropdownField<AccessPanel>(
            value: SelectionItem<AccessPanel>(
              value: inspection.ceiling.accessPanel,
              name: inspection.ceiling.accessPanel.label,
            ),
            all: AccessPanel.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (accessPanel) {
              final ceiling =
                  inspection.ceiling.copyWith(accessPanel: accessPanel);
              ref.read(inspectionProvider.notifier).updateCeiling(ceiling);
            },
          ),
        ),
        SectionItem(
          axis: Axis.horizontal,
          title: '（構造）ひび割れ、欠損\n浮き、はらみ、剥落',
          child: DropdownField.result(
            result: inspection.ceiling.foundationDamage.result,
            onSelect: (result) {
              final foundationDamage =
                  inspection.ceiling.foundationDamage.copyWith(result: result);
              final ceiling = inspection.ceiling
                  .copyWith(foundationDamage: foundationDamage);
              ref.read(inspectionProvider.notifier).updateCeiling(ceiling);
            },
          ),
        ),
        if (inspection.ceiling.foundationDamage.result == Result.failure) ...[
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
              photos: inspection.innerWall.foundationDamage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '（構造）ひび割れ、欠損\n浮き、はらみ、剥落',
          child: DropdownField.result(
            result: inspection.ceiling.foundationDamage.result,
            onSelect: (result) {
              final foundationDamage =
                  inspection.ceiling.foundationDamage.copyWith(result: result);
              final ceiling = inspection.ceiling
                  .copyWith(foundationDamage: foundationDamage);
              ref.read(inspectionProvider.notifier).updateCeiling(ceiling);
            },
          ),
        ),
        if (inspection.ceiling.foundationDamage.result == Result.failure) ...[
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
              photos: inspection.innerWall.foundationDamage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem(
              value: inspection.ceiling.coverage,
              name: inspection.ceiling.coverage.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final ceiling = inspection.ceiling.copyWith(coverage: coverage);
              ref.read(inspectionProvider.notifier).updateCeiling(ceiling);
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
