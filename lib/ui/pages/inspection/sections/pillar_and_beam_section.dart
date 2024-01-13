import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/pillar_and_beam/pillar_and_beam.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/image_source_sheet.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class PillarAndBeamSection extends HookConsumerWidget {
  const PillarAndBeamSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '柱及び梁',
      actions: [
        MenuButton(
          title: '「柱及び梁」の項目全てを一括で設定します',
          notApplicable: inspection.pillarAndBeam.notApplicable,
          onTapAllPassed: () {
            controller
                .updatePillarAndBeam(inspection.pillarAndBeam.allPassed());
          },
          onTapNotApplicable: () {
            controller
                .updatePillarAndBeam(const PillarAndBeam(notApplicable: true));
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 柱の著しいひび割れ\n劣化、欠損',
          child: DropdownField.result(
            result: inspection.pillarAndBeam.pillarDamage.result,
            onSelect: (result) {
              final pillarDamage = inspection.pillarAndBeam.pillarDamage
                  .copyWith(result: result);
              final pillarAndBeam =
                  inspection.pillarAndBeam.copyWith(pillarDamage: pillarDamage);
              controller.updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        if (inspection.pillarAndBeam.pillarDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　最大ひび割れ幅、欠損深さ',
            child: PrimaryTextField(
              initialText:
                  inspection.pillarAndBeam.pillarDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final pillarDamage =
                    inspection.pillarAndBeam.pillarDamage.copyWith(max: max);
                final pillarAndBeam = inspection.pillarAndBeam
                    .copyWith(pillarDamage: pillarDamage);
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.pillarAndBeam.pillarDamage.part ?? '',
              onChange: (text) {
                final pillarDamage =
                    inspection.pillarAndBeam.pillarDamage.copyWith(part: text);
                final pillarAndBeam = inspection.pillarAndBeam
                    .copyWith(pillarDamage: pillarDamage);
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.pillarAndBeam.pillarDamage.photos,
              onChange: (photos) {
                final pillarAndBeam = inspection.pillarAndBeam.copyWith(
                  pillarDamage: inspection.pillarAndBeam.pillarDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updatePillarAndBeam(pillarAndBeam);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final pillarAndBeam = inspection.pillarAndBeam.copyWith(
                  pillarDamage: inspection.pillarAndBeam.pillarDamage.copyWith(
                    photos: [
                      ...inspection.pillarAndBeam.pillarDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 6/1000以上の傾斜',
          child: DropdownField.result(
            result: inspection.pillarAndBeam.pillarInclination.result,
            onSelect: (result) {
              final pillarInclination = inspection
                  .pillarAndBeam.pillarInclination
                  .copyWith(result: result);
              final pillarAndBeam = inspection.pillarAndBeam
                  .copyWith(pillarInclination: pillarInclination);
              controller.updatePillarAndBeam(pillarAndBeam);
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
              initialText:
                  inspection.pillarAndBeam.pillarInclination.max?.toString() ??
                      '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final pillarInclination = inspection
                    .pillarAndBeam.pillarInclination
                    .copyWith(max: max);
                final pillarAndBeam = inspection.pillarAndBeam
                    .copyWith(pillarInclination: pillarInclination);
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　柱の最も傾きがある場所',
            child: PrimaryTextField(
              initialText:
                  inspection.pillarAndBeam.pillarInclination.part ?? '',
              onChange: (text) {
                final pillarInclination = inspection
                    .pillarAndBeam.pillarInclination
                    .copyWith(part: text);
                final pillarAndBeam = inspection.pillarAndBeam
                    .copyWith(pillarInclination: pillarInclination);
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.pillarAndBeam.pillarInclination.photos,
              onChange: (photos) {
                final pillarAndBeam = inspection.pillarAndBeam.copyWith(
                  pillarInclination:
                      inspection.pillarAndBeam.pillarInclination.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updatePillarAndBeam(pillarAndBeam);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final pillarAndBeam = inspection.pillarAndBeam.copyWith(
                  pillarInclination:
                      inspection.pillarAndBeam.pillarInclination.copyWith(
                    photos: [
                      ...inspection.pillarAndBeam.pillarInclination.photos,
                      ...news
                    ],
                  ),
                );
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 梁の著しいひび割れ、劣化、欠損',
          child: DropdownField.result(
            result: inspection.pillarAndBeam.beamDamage.result,
            onSelect: (result) {
              final beamDamage =
                  inspection.pillarAndBeam.beamDamage.copyWith(result: result);
              final pillarAndBeam =
                  inspection.pillarAndBeam.copyWith(beamDamage: beamDamage);
              controller.updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        if (inspection.pillarAndBeam.beamDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　最大ひび割れ幅、欠損深さ',
            child: PrimaryTextField(
              initialText:
                  inspection.pillarAndBeam.beamDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final beamDamage =
                    inspection.pillarAndBeam.beamDamage.copyWith(max: max);
                final pillarAndBeam =
                    inspection.pillarAndBeam.copyWith(beamDamage: beamDamage);
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.pillarAndBeam.beamDamage.part ?? '',
              onChange: (text) {
                final beamDamage =
                    inspection.pillarAndBeam.beamDamage.copyWith(part: text);
                final pillarAndBeam =
                    inspection.pillarAndBeam.copyWith(beamDamage: beamDamage);
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.pillarAndBeam.beamDamage.photos,
              onChange: (photos) {
                final pillarAndBeam = inspection.pillarAndBeam.copyWith(
                  beamDamage: inspection.pillarAndBeam.beamDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updatePillarAndBeam(pillarAndBeam);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final pillarAndBeam = inspection.pillarAndBeam.copyWith(
                  beamDamage: inspection.pillarAndBeam.beamDamage.copyWith(
                    photos: [
                      ...inspection.pillarAndBeam.beamDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 梁の著しい たわみ',
          child: DropdownField.result(
            result: inspection.pillarAndBeam.beamDeflection.result,
            onSelect: (result) {
              final beamDeflection = inspection.pillarAndBeam.beamDeflection
                  .copyWith(result: result);
              final pillarAndBeam = inspection.pillarAndBeam
                  .copyWith(beamDeflection: beamDeflection);
              controller.updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        if (inspection.pillarAndBeam.beamDeflection.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.pillarAndBeam.beamDeflection.part ?? '',
              onChange: (text) {
                final beamDeflection = inspection.pillarAndBeam.beamDeflection
                    .copyWith(part: text);
                final pillarAndBeam = inspection.pillarAndBeam
                    .copyWith(beamDeflection: beamDeflection);
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.pillarAndBeam.beamDeflection.photos,
              onChange: (photos) {
                final pillarAndBeam = inspection.pillarAndBeam.copyWith(
                  beamDeflection:
                      inspection.pillarAndBeam.beamDeflection.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updatePillarAndBeam(pillarAndBeam);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final pillarAndBeam = inspection.pillarAndBeam.copyWith(
                  beamDeflection:
                      inspection.pillarAndBeam.beamDeflection.copyWith(
                    photos: [
                      ...inspection.pillarAndBeam.beamDeflection.photos,
                      ...news
                    ],
                  ),
                );
                controller.updatePillarAndBeam(pillarAndBeam);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.pillarAndBeam.coverage,
              name: inspection.pillarAndBeam.coverage?.label,
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
              controller.updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            initialText: inspection.pillarAndBeam.remarks ?? '',
            maxLines: 100,
            onChange: (text) {
              final pillarAndBeam =
                  inspection.pillarAndBeam.copyWith(remarks: text);
              controller.updatePillarAndBeam(pillarAndBeam);
            },
          ),
        ),
      ],
    );
  }
}
