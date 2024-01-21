import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/ant_damage/ant_damage.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class AntDamageSection extends HookConsumerWidget {
  const AntDamageSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '蟻害',
      complete: inspection.antDamage.complete,
      actions: [
        SectionMenuButton(
          notApplicable: inspection.antDamage.notApplicable,
          title: '「蟻害」の項目全てを一括で設定します',
          onTapAllPassed: () {
            controller.updateAntDamage(inspection.antDamage.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateAntDamage(AntDamage(
              notApplicable: !inspection.antDamage.notApplicable,
            ));
          },
        ),
      ],
      children: [
        SectionItem(
          title: '床下点検口の有無',
          strikeThrough: inspection.antDamage.notApplicable,
          incomplete: inspection.antDamage.accessPanel == null,
          child: DropdownField<AccessPanel>(
            value: SelectionItem.orNull(
              value: inspection.antDamage.accessPanel,
              name: inspection.antDamage.accessPanel?.label,
            ),
            all: AccessPanel.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (accessPanel) {
              final antDamage =
                  inspection.antDamage.copyWith(accessPanel: accessPanel);
              controller.updateAntDamage(antDamage);
            },
          ),
        ),
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 著しい蟻害',
          strikeThrough: inspection.antDamage.notApplicable,
          incomplete: inspection.antDamage.antDamage.result == Result.none,
          child: DropdownField.result(
            result: inspection.antDamage.antDamage.result,
            onSelect: (result) {
              final antDamage =
                  inspection.antDamage.antDamage.copyWith(result: result);
              final ant = inspection.antDamage.copyWith(antDamage: antDamage);
              controller.updateAntDamage(ant);
            },
          ),
        ),
        if (inspection.antDamage.antDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.antDamage.antDamage.directions.isEmpty,
            child: PrimaryTextField(
              initialText: inspection.antDamage.antDamage.part ?? '',
              onChange: (text) {
                final antDamage =
                    inspection.antDamage.antDamage.copyWith(part: text);
                final ant = inspection.antDamage.copyWith(antDamage: antDamage);
                controller.updateAntDamage(ant);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.antDamage.antDamage.photos,
              onChange: (photos) {
                final antDamage = inspection.antDamage.copyWith(
                  antDamage: inspection.antDamage.antDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateAntDamage(antDamage);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final antDamage = inspection.antDamage.copyWith(
                  antDamage: inspection.antDamage.antDamage.copyWith(
                    photos: [...inspection.antDamage.antDamage.photos, ...news],
                  ),
                );
                controller.updateAntDamage(antDamage);
              },
              onTapDelete: (photo) async {
                final news = inspection.antDamage.antDamage.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final antDamage = inspection.antDamage.copyWith(
                  antDamage: inspection.antDamage.antDamage.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateAntDamage(antDamage);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          strikeThrough: inspection.antDamage.notApplicable,
          incomplete: inspection.antDamage.coverage == null,
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.antDamage.coverage,
              name: inspection.antDamage.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final antDamage =
                  inspection.antDamage.copyWith(coverage: coverage);
              controller.updateAntDamage(antDamage);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.antDamage.remarks ?? '',
            onChange: (text) {
              final antDamage = inspection.antDamage.copyWith(remarks: text);
              controller.updateAntDamage(antDamage);
            },
          ),
        ),
      ],
    );
  }
}
