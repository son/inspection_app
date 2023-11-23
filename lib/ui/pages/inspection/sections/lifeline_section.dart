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

class LifelineSection extends HookConsumerWidget {
  const LifelineSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);

    return Section(
      title: '給排水、電気、ガス設備',
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
          title: 'キッチンコンロ、換気扇\nパッケージ、エアコンの設備機器の作動不良',
          child: DropdownField.result(
            result: inspection.lifeline.otherMalfunction.result,
            onSelect: (result) {
              final otherMalfunction =
                  inspection.lifeline.otherMalfunction.copyWith(result: result);
              final lifeline = inspection.lifeline
                  .copyWith(otherMalfunction: otherMalfunction);
              ref.read(inspectionProvider.notifier).updateLifeline(lifeline);
            },
          ),
        ),
        if (inspection.lifeline.otherMalfunction.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　調査内容',
            child: PrimaryTextField(
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
            axis: Axis.horizontal,
            title: '　作動不良の状況',
            child: PrimaryTextField(
              onChange: (text) {},
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.lifeline.otherMalfunction.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '給排水、電気、ガス設備の作動不良',
          child: DropdownField.result(
            result: inspection.lifeline.lifelineMalfunction.result,
            onSelect: (result) {
              final lifelineMalfunction = inspection
                  .lifeline.lifelineMalfunction
                  .copyWith(result: result);
              final lifeline = inspection.lifeline
                  .copyWith(lifelineMalfunction: lifelineMalfunction);
              ref.read(inspectionProvider.notifier).updateLifeline(lifeline);
            },
          ),
        ),
        if (inspection.lifeline.lifelineMalfunction.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　調査内容',
            child: PrimaryTextField(
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
            axis: Axis.horizontal,
            title: '　作動不良の状況',
            child: PrimaryTextField(
              onChange: (text) {},
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.lifeline.lifelineMalfunction.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem(
              value: inspection.lifeline.coverage,
              name: inspection.lifeline.coverage.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final lifeline = inspection.lifeline.copyWith(coverage: coverage);
              ref.read(inspectionProvider.notifier).updateLifeline(lifeline);
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
