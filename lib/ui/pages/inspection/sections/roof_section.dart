import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/image_source_sheet.dart';
import 'package:inspection_app/ui/components/multi_dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class RoofSection extends HookConsumerWidget {
  const RoofSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '屋根',
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
          title: '調査要否',
          child: DropdownField<Necessity>(
            value: SelectionItem.orNull(
              value: inspection.roof.necessity,
              name: inspection.roof.necessity?.label,
            ),
            all: Necessity.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (value) {
              controller.updateNecessity(value);
            },
          ),
        ),
        SectionItem(
          axis: Axis.horizontal,
          title: '[雨水] 破損、ずれ、ひび割れ\n劣化、欠損、浮き、剥がれ',
          child: DropdownField.result(
            result: inspection.roof.damage.result,
            onSelect: (result) {
              final damage = inspection.roof.damage.copyWith(result: result);
              final roof = inspection.roof.copyWith(damage: damage);
              controller.updateRoof(roof);
            },
          ),
        ),
        if (inspection.roof.damage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.roof.damage.directions
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
                final damage =
                    inspection.roof.damage.copyWith(directions: directions);
                final roof = inspection.roof.copyWith(damage: damage);
                controller.updateRoof(roof);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.roof.damage.photos,
              onChange: (photos) {
                final roof = inspection.roof.copyWith(
                  damage: inspection.roof.damage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateRoof(roof);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final roof = inspection.roof.copyWith(
                  damage: inspection.roof.damage.copyWith(
                    photos: [...inspection.roof.damage.photos, ...news],
                  ),
                );
                controller.updateRoof(roof);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[雨水] 破損、ずれ、ひび割れ\n劣化、欠損、浮き、剥がれ',
          child: DropdownField.result(
            result: inspection.roof.waterProofLayerDamage.result,
            onSelect: (result) {
              final waterProofLayerDamage = inspection
                  .roof.waterProofLayerDamage
                  .copyWith(result: result);
              final roof = inspection.roof
                  .copyWith(waterProofLayerDamage: waterProofLayerDamage);
              controller.updateRoof(roof);
            },
          ),
        ),
        if (inspection.roof.waterProofLayerDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.roof.waterProofLayerDamage.directions
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
                final waterProofLayerDamage = inspection
                    .roof.waterProofLayerDamage
                    .copyWith(directions: directions);
                final roof = inspection.roof
                    .copyWith(waterProofLayerDamage: waterProofLayerDamage);
                controller.updateRoof(roof);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.roof.waterProofLayerDamage.photos,
              onChange: (photos) {
                final roof = inspection.roof.copyWith(
                  waterProofLayerDamage:
                      inspection.roof.waterProofLayerDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateRoof(roof);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final roof = inspection.roof.copyWith(
                  waterProofLayerDamage:
                      inspection.roof.waterProofLayerDamage.copyWith(
                    photos: [
                      ...inspection.roof.waterProofLayerDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateRoof(roof);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.roof.coverage,
              name: inspection.roof.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final roof = inspection.roof.copyWith(coverage: coverage);
              controller.updateRoof(roof);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.roof.remarks,
            onChange: (text) {
              final roof = inspection.roof.copyWith(remarks: text);
              controller.updateRoof(roof);
            },
          ),
        ),
      ],
    );
  }
}
