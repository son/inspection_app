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

class PillarAndBeamSection extends HookConsumerWidget {
  const PillarAndBeamSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);

    return Section(
      title: '柱及び梁',
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
            result: inspection.pillarAndBeam.pillarDamage.result,
            onSelect: (result) {
              final pillarDamage = inspection.pillarAndBeam.pillarDamage
                  .copyWith(result: result);
              final pillarAndBeam =
                  inspection.pillarAndBeam.copyWith(pillarDamage: pillarDamage);
              ref
                  .read(inspectionProvider.notifier)
                  .updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        if (inspection.pillarAndBeam.pillarDamage.result == Result.failure) ...[
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
              photos: inspection.pillarAndBeam.pillarDamage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '（構造）6/1000以上の傾斜',
          child: DropdownField.result(
            result: inspection.pillarAndBeam.pillarInclination.result,
            onSelect: (result) {
              final pillarInclination = inspection
                  .pillarAndBeam.pillarInclination
                  .copyWith(result: result);
              final pillarAndBeam = inspection.pillarAndBeam
                  .copyWith(pillarInclination: pillarInclination);
              ref
                  .read(inspectionProvider.notifier)
                  .updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        if (inspection.pillarAndBeam.pillarInclination.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　当該部分の傾斜',
            child: PrimaryTextField(
              fixedText: '/1000',
              onChange: (text) {},
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　柱の最も傾きがある場所',
            child: PrimaryTextField(
              onChange: (text) {},
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.pillarAndBeam.pillarInclination.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '（構造）梁の著しいひび割れ、劣化、欠損',
          child: DropdownField.result(
            result: inspection.pillarAndBeam.beamDamage.result,
            onSelect: (result) {
              final beamDamage =
                  inspection.pillarAndBeam.beamDamage.copyWith(result: result);
              final pillarAndBeam =
                  inspection.pillarAndBeam.copyWith(beamDamage: beamDamage);
              ref
                  .read(inspectionProvider.notifier)
                  .updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        if (inspection.pillarAndBeam.beamDamage.result == Result.failure) ...[
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
              photos: inspection.pillarAndBeam.beamDamage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '（構造）梁の著しい たわみ',
          child: DropdownField.result(
            result: inspection.pillarAndBeam.beamDeflection.result,
            onSelect: (result) {
              final beamDeflection = inspection.pillarAndBeam.beamDeflection
                  .copyWith(result: result);
              final pillarAndBeam = inspection.pillarAndBeam
                  .copyWith(beamDeflection: beamDeflection);
              ref
                  .read(inspectionProvider.notifier)
                  .updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        if (inspection.pillarAndBeam.beamDeflection.result ==
            Result.failure) ...[
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
              photos: inspection.pillarAndBeam.beamDeflection.photos,
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
