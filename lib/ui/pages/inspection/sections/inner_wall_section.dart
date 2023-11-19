import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/multi_dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class InnerWallSection extends HookConsumerWidget {
  const InnerWallSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);

    return Section(
      title: '内壁',
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
          title: '（構造）ひび割れ、欠損\n浮き、はらみ、剥落',
          child: DropdownField.result(
            result: inspection.innerWall.foundationDamage.result,
            onSelect: (result) {
              final foundationDamage = inspection.innerWall.foundationDamage
                  .copyWith(result: result);
              final innerWall = inspection.innerWall
                  .copyWith(foundationDamage: foundationDamage);
              ref.read(inspectionProvider.notifier).updateInnerWall(innerWall);
            },
          ),
        ),
        if (inspection.innerWall.foundationDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.innerWall.foundationDamage.directions
                  .map((e) => SelectionItem(
                        value: e,
                        name: '${e.label}面',
                      ))
                  .toList(),
              all: Direction.values
                  .map((value) => SelectionItem(
                        value: value,
                        name: '${value.label}面',
                      ))
                  .toList(),
              onSelect: (directions) {
                final foundationDamage = inspection.innerWall.foundationDamage
                    .copyWith(directions: directions);
                final innerWall = inspection.innerWall
                    .copyWith(foundationDamage: foundationDamage);
                ref
                    .read(inspectionProvider.notifier)
                    .updateInnerWall(innerWall);
              },
            ),
          ),
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
              photos: inspection.innerWall.foundationDamage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '（構造）6/1000以上の傾斜',
          child: DropdownField.result(
            result: inspection.innerWall.foundationInclination.result,
            onSelect: (result) {
              final foundationInclination = inspection
                  .innerWall.foundationInclination
                  .copyWith(result: result);
              final innerWall = inspection.innerWall
                  .copyWith(foundationInclination: foundationInclination);
              ref.read(inspectionProvider.notifier).updateInnerWall(innerWall);
            },
          ),
        ),
        if (inspection.innerWall.foundationInclination.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.innerWall.foundationInclination.directions
                  .map((e) => SelectionItem(
                        value: e,
                        name: '${e.label}面',
                      ))
                  .toList(),
              all: Direction.values
                  .map((value) => SelectionItem(
                        value: value,
                        name: '${value.label}面',
                      ))
                  .toList(),
              onSelect: (directions) {
                final foundationInclination = inspection
                    .innerWall.foundationInclination
                    .copyWith(directions: directions);
                final innerWall = inspection.innerWall
                    .copyWith(foundationInclination: foundationInclination);
                ref
                    .read(inspectionProvider.notifier)
                    .updateInnerWall(innerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　当該部分の傾斜',
            child: PrimaryTextField(
              fixedText: 'mm',
              onChange: (text) {},
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　壁の最も傾きがある場所',
            child: PrimaryTextField(
              onChange: (text) {},
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.innerWall.foundationInclination.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '（雨水）内壁の雨漏りの跡',
          child: DropdownField.result(
            result: inspection.innerWall.rainInnerWallLeak.result,
            onSelect: (result) {
              final rainInnerWallLeak = inspection.innerWall.rainInnerWallLeak
                  .copyWith(result: result);
              final innerWall = inspection.innerWall
                  .copyWith(rainInnerWallLeak: rainInnerWallLeak);
              ref.read(inspectionProvider.notifier).updateInnerWall(innerWall);
            },
          ),
        ),
        if (inspection.innerWall.rainInnerWallLeak.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.innerWall.rainInnerWallLeak.directions
                  .map((e) => SelectionItem(
                        value: e,
                        name: '${e.label}面',
                      ))
                  .toList(),
              all: Direction.values
                  .map((value) => SelectionItem(
                        value: value,
                        name: '${value.label}面',
                      ))
                  .toList(),
              onSelect: (directions) {
                final rainInnerWallLeak = inspection.innerWall.rainInnerWallLeak
                    .copyWith(directions: directions);
                final innerWall = inspection.innerWall
                    .copyWith(rainInnerWallLeak: rainInnerWallLeak);
                ref
                    .read(inspectionProvider.notifier)
                    .updateInnerWall(innerWall);
              },
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
              photos: inspection.innerWall.rainInnerWallLeak.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem(
              value: inspection.innerWall.coverage,
              name: inspection.innerWall.coverage.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final innerWall =
                  inspection.innerWall.copyWith(coverage: coverage);
              ref.read(inspectionProvider.notifier).updateInnerWall(innerWall);
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
