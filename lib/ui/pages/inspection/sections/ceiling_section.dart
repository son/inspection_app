import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class CeilingSection extends HookConsumerWidget {
  const CeilingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '天井',
      complete: inspection.ceiling.complete,
      actions: [
        MenuButton(
          title: '「天井」の項目全てを一括で設定します',
          notApplicable: inspection.ceiling.notApplicable,
          onTapAllPassed: () {
            controller.updateCeiling(inspection.ceiling.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateCeiling(
              Ceiling(notApplicable: !inspection.ceiling.notApplicable),
            );
          },
        ),
      ],
      children: [
        SectionItem(
          title: '天井点検口の有無',
          strikeThrough: inspection.ceiling.notApplicable,
          incomplete: inspection.ceiling.accessPanel == null,
          child: DropdownField<AccessPanel>(
            value: SelectionItem.orNull(
              value: inspection.ceiling.accessPanel,
              name: inspection.ceiling.accessPanel?.label,
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
              controller.updateCeiling(ceiling);
            },
          ),
        ),
        SectionItem(
          axis: Axis.horizontal,
          strikeThrough: inspection.ceiling.notApplicable,
          incomplete: inspection.ceiling.foundationDamage.result == Result.none,
          title: '[構造] ひび割れ、欠損\n浮き、はらみ、剥落',
          child: DropdownField.result(
            result: inspection.ceiling.foundationDamage.result,
            onSelect: (result) {
              final foundationDamage =
                  inspection.ceiling.foundationDamage.copyWith(result: result);
              final ceiling = inspection.ceiling
                  .copyWith(foundationDamage: foundationDamage);
              controller.updateCeiling(ceiling);
            },
          ),
        ),
        if (inspection.ceiling.foundationDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete:
                inspection.ceiling.foundationDamage.part?.isEmpty ?? true,
            child: PrimaryTextField(
              initialText: inspection.ceiling.foundationDamage.part ?? '',
              onChange: (text) {
                final foundationDamage =
                    inspection.ceiling.foundationDamage.copyWith(part: text);
                final ceiling = inspection.ceiling
                    .copyWith(foundationDamage: foundationDamage);
                controller.updateCeiling(ceiling);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.ceiling.foundationDamage.photos,
              onChange: (photos) {
                final ceiling = inspection.ceiling.copyWith(
                  foundationDamage:
                      inspection.ceiling.foundationDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateCeiling(ceiling);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final ceiling = inspection.ceiling.copyWith(
                  foundationDamage:
                      inspection.ceiling.foundationDamage.copyWith(
                    photos: [
                      ...inspection.ceiling.foundationDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateCeiling(ceiling);
              },
              onTapDelete: (photo) async {
                final news = inspection.ceiling.foundationDamage.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final ceiling = inspection.ceiling.copyWith(
                  foundationDamage:
                      inspection.ceiling.foundationDamage.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateCeiling(ceiling);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          incomplete: inspection.ceiling.rainCeilingLeak.result == Result.none,
          title: '[雨水] 天井の雨漏りの跡',
          strikeThrough: inspection.ceiling.notApplicable,
          child: DropdownField.result(
            result: inspection.ceiling.rainCeilingLeak.result,
            onSelect: (result) {
              final rainCeilingLeak =
                  inspection.ceiling.rainCeilingLeak.copyWith(result: result);
              final ceiling =
                  inspection.ceiling.copyWith(rainCeilingLeak: rainCeilingLeak);
              controller.updateCeiling(ceiling);
            },
          ),
        ),
        if (inspection.ceiling.rainCeilingLeak.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete:
                inspection.ceiling.rainCeilingLeak.part?.isEmpty ?? true,
            child: PrimaryTextField(
              initialText: inspection.ceiling.rainCeilingLeak.part ?? '',
              onChange: (text) {
                final rainCeilingLeak =
                    inspection.ceiling.rainCeilingLeak.copyWith(part: text);
                final ceiling = inspection.ceiling
                    .copyWith(rainCeilingLeak: rainCeilingLeak);
                controller.updateCeiling(ceiling);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.ceiling.rainCeilingLeak.photos,
              onChange: (photos) {
                final ceiling = inspection.ceiling.copyWith(
                  rainCeilingLeak: inspection.ceiling.rainCeilingLeak.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateCeiling(ceiling);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final ceiling = inspection.ceiling.copyWith(
                  rainCeilingLeak: inspection.ceiling.rainCeilingLeak.copyWith(
                    photos: [
                      ...inspection.ceiling.rainCeilingLeak.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateCeiling(ceiling);
              },
              onTapDelete: (photo) async {
                final news = inspection.ceiling.rainCeilingLeak.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final ceiling = inspection.ceiling.copyWith(
                  rainCeilingLeak: inspection.ceiling.rainCeilingLeak.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateCeiling(ceiling);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          strikeThrough: inspection.ceiling.notApplicable,
          incomplete: inspection.ceiling.coverage == null,
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.ceiling.coverage,
              name: inspection.ceiling.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final ceiling = inspection.ceiling.copyWith(coverage: coverage);
              controller.updateCeiling(ceiling);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            initialText: inspection.ceiling.remarks ?? '',
            textAlign: TextAlign.start,
            maxLines: 100,
            onChange: (remarks) {
              final ceiling = inspection.ceiling.copyWith(remarks: remarks);
              controller.updateCeiling(ceiling);
            },
          ),
        ),
      ],
    );
  }
}
