import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/balcony/balcony.dart';
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

class BalconySection extends HookConsumerWidget {
  const BalconySection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: 'バルコニー（共用廊下）',
      complete: inspection.balcony.complete,
      actions: [
        MenuButton(
          notApplicable: inspection.balcony.notApplicable,
          title: '「バルコニー（共用廊下）」の項目全てを一括で設定します',
          onTapAllPassed: () {
            controller.updateBalcony(inspection.balcony.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateBalcony(const Balcony(notApplicable: true));
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          incomplete: inspection.balcony.foundation.result == Result.none,
          title: '[構造] 支持部材・床の\nぐらつき、ひび割れ、劣化',
          child: DropdownField.result(
            result: inspection.balcony.foundation.result,
            onSelect: (result) {
              final foundation =
                  inspection.balcony.foundation.copyWith(result: result);
              final balcony =
                  inspection.balcony.copyWith(foundation: foundation);
              controller.updateBalcony(balcony);
            },
          ),
        ),
        if (inspection.balcony.foundation.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.balcony.foundation.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.balcony.foundation.directions
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
                final foundation = inspection.balcony.foundation
                    .copyWith(directions: directions);
                final balcony =
                    inspection.balcony.copyWith(foundation: foundation);
                controller.updateBalcony(balcony);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅',
            indent: true,
            incomplete: inspection.balcony.foundation.max == null,
            child: PrimaryTextField(
              initialText: inspection.balcony.foundation.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final foundation =
                    inspection.balcony.foundation.copyWith(max: max);
                final balcony =
                    inspection.balcony.copyWith(foundation: foundation);
                controller.updateBalcony(balcony);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.balcony.foundation.photos,
              onChange: (photos) {
                final balcony = inspection.balcony.copyWith(
                  foundation: inspection.balcony.foundation.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateBalcony(balcony);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final balcony = inspection.balcony.copyWith(
                  foundation: inspection.balcony.foundation.copyWith(
                    photos: [...inspection.balcony.foundation.photos, ...news],
                  ),
                );
                controller.updateBalcony(balcony);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[雨水] 防水層のひび割れ、劣化、欠損\n水切り金物などの不具合',
          incomplete: inspection.balcony.waterProofLayer.result == Result.none,
          child: DropdownField.result(
            result: inspection.balcony.waterProofLayer.result,
            onSelect: (result) {
              final waterProofLayer =
                  inspection.balcony.waterProofLayer.copyWith(result: result);
              final balcony =
                  inspection.balcony.copyWith(waterProofLayer: waterProofLayer);
              controller.updateBalcony(balcony);
            },
          ),
        ),
        if (inspection.balcony.waterProofLayer.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.balcony.waterProofLayer.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.balcony.waterProofLayer.directions
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
                final waterProofLayer = inspection.balcony.waterProofLayer
                    .copyWith(directions: directions);
                final balcony = inspection.balcony
                    .copyWith(waterProofLayer: waterProofLayer);
                controller.updateBalcony(balcony);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.balcony.waterProofLayer.photos,
              onChange: (photos) {
                final balcony = inspection.balcony.copyWith(
                  waterProofLayer: inspection.balcony.waterProofLayer.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateBalcony(balcony);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final balcony = inspection.balcony.copyWith(
                  waterProofLayer: inspection.balcony.waterProofLayer.copyWith(
                    photos: [
                      ...inspection.balcony.waterProofLayer.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateBalcony(balcony);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲（構造）',
          incomplete: inspection.balcony.foundationCoverage == null,
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.balcony.foundationCoverage,
              name: inspection.balcony.foundationCoverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (foundationCoverage) {
              final balcony = inspection.balcony
                  .copyWith(foundationCoverage: foundationCoverage);
              controller.updateBalcony(balcony);
            },
          ),
        ),
        SectionItem(
          title: '調査できた範囲（雨水）',
          incomplete: inspection.balcony.waterProofLayerCoverage == null,
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.balcony.waterProofLayerCoverage,
              name: inspection.balcony.waterProofLayerCoverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (waterProofLayerCoverage) {
              final balcony = inspection.balcony
                  .copyWith(waterProofLayerCoverage: waterProofLayerCoverage);
              controller.updateBalcony(balcony);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.balcony.remarks ?? '',
            onChange: (text) {
              final balcony = inspection.balcony.copyWith(remarks: text);
              controller.updateBalcony(balcony);
            },
          ),
        ),
      ],
    );
  }
}
