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

class RoofFrameSection extends HookConsumerWidget {
  const RoofFrameSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);

    return Section(
      title: '小屋組（下屋部分を含む）',
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
          title: '（構造）ひび割れ、欠損',
          child: DropdownField.result(
            result: inspection.roofFrame.foundationDamage.result,
            onSelect: (result) {
              final foundationDamage = inspection.roofFrame.foundationDamage
                  .copyWith(result: result);
              final roofFrame = inspection.roofFrame
                  .copyWith(foundationDamage: foundationDamage);
              ref.read(inspectionProvider.notifier).updateRoofFrame(roofFrame);
            },
          ),
        ),
        if (inspection.roofFrame.foundationDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　最大ひび割れ幅、欠損深さ',
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
              photos: inspection.roofFrame.foundationDamage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '（雨水）小屋組の雨漏りの跡',
          child: DropdownField.result(
            result: inspection.roofFrame.foundationDamage.result,
            onSelect: (result) {
              final foundationDamage = inspection.roofFrame.foundationDamage
                  .copyWith(result: result);
              final roofFrame = inspection.roofFrame
                  .copyWith(foundationDamage: foundationDamage);
              ref.read(inspectionProvider.notifier).updateRoofFrame(roofFrame);
            },
          ),
        ),
        if (inspection.roofFrame.foundationDamage.result == Result.failure) ...[
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
              photos: inspection.roofFrame.foundationDamage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem(
              value: inspection.roofFrame.coverage,
              name: inspection.roofFrame.coverage.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final roofFrame =
                  inspection.roofFrame.copyWith(coverage: coverage);
              ref.read(inspectionProvider.notifier).updateRoofFrame(roofFrame);
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
