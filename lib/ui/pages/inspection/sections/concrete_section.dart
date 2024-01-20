import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/concrete/concrete.dart';
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

// TODO: 写真じゃない！！！！！！！！！！！！！
class ConcreteSection extends HookConsumerWidget {
  const ConcreteSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: 'コンクリート圧縮強度',
      actions: [
        MenuButton(
          title: '「コンクリート圧縮強度」の項目全てを一括で設定します',
          notApplicable: inspection.concrete.notApplicable,
          onTapAllPassed: () {
            controller.updateConcrete(inspection.concrete.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateConcrete(const Concrete(notApplicable: true));
          },
        ),
      ],
      children: [
        SectionItem(
          title: '圧縮強度調査の有無',
          incomplete: inspection.concrete.exploration == null,
          child: DropdownField<bool>(
            value: () {
              if (inspection.concrete.exploration == null) return null;
              return SelectionItem(
                value: inspection.concrete.exploration!,
                name: inspection.concrete.exploration! ? 'あり（鉄骨造・大規模住宅）' : 'なし',
              );
            }(),
            all: [false, true]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? 'あり（鉄骨造・大規模住宅）' : 'なし',
                    ))
                .toList(),
            onSelect: (isOn) {
              final concrete = inspection.concrete.copyWith(exploration: isOn);
              controller.updateConcrete(concrete);
            },
          ),
        ),
        if (inspection.concrete.exploration ?? false) ...[
          SectionItem(
            axis: Axis.horizontal,
            incomplete:
                inspection.concrete.compressiveStrength1.result == Result.none,
            title: 'コンクリート圧縮強度１',
            child: DropdownField.result(
              result: inspection.concrete.compressiveStrength1.result,
              onSelect: (result) {
                final compressiveStrength = inspection
                    .concrete.compressiveStrength1
                    .copyWith(result: result);
                final concrete = inspection.concrete
                    .copyWith(compressiveStrength1: compressiveStrength);
                controller.updateConcrete(concrete);
              },
            ),
          ),
          if (inspection.concrete.compressiveStrength1.result ==
              Result.failure) ...[
            SectionItem(
              axis: Axis.vertical,
              child: PhotoCaptionsItem(
                photos: inspection.concrete.compressiveStrength1.photos,
                onChange: (photos) {
                  final concrete = inspection.concrete.copyWith(
                    compressiveStrength1:
                        inspection.concrete.compressiveStrength1.copyWith(
                      photos: [...photos],
                    ),
                  );
                  controller.updateConcrete(concrete);
                },
                onTapAdd: (paths) async {
                  final news = await controller.createNewPhotos(paths);
                  final concrete = inspection.concrete.copyWith(
                    compressiveStrength1:
                        inspection.concrete.compressiveStrength1.copyWith(
                      photos: [
                        ...inspection.concrete.compressiveStrength1.photos,
                        ...news
                      ],
                    ),
                  );
                  controller.updateConcrete(concrete);
                },
                onTapDelete: (photo) async {
                  final news = inspection.concrete.compressiveStrength1.photos
                      .whereNot((p) => p.image == photo.image)
                      .toList();
                  final concrete = inspection.concrete.copyWith(
                    compressiveStrength1:
                        inspection.concrete.compressiveStrength1.copyWith(
                      photos: [...news],
                    ),
                  );
                  controller.updateConcrete(concrete);
                  await controller.deletePhoto(photo);
                },
              ),
            ),
          ],
          SectionItem(
            axis: Axis.horizontal,
            incomplete:
                inspection.concrete.compressiveStrength2.result == Result.none,
            title: 'コンクリート圧縮強度２',
            child: DropdownField.result(
              result: inspection.concrete.compressiveStrength2.result,
              onSelect: (result) {
                final compressiveStrength = inspection
                    .concrete.compressiveStrength2
                    .copyWith(result: result);
                final concrete = inspection.concrete
                    .copyWith(compressiveStrength2: compressiveStrength);
                controller.updateConcrete(concrete);
              },
            ),
          ),
          if (inspection.concrete.compressiveStrength2.result ==
              Result.failure) ...[
            SectionItem(
              axis: Axis.vertical,
              child: PhotoCaptionsItem(
                photos: inspection.concrete.compressiveStrength2.photos,
                onChange: (photos) {
                  final concrete = inspection.concrete.copyWith(
                    compressiveStrength2:
                        inspection.concrete.compressiveStrength2.copyWith(
                      photos: [...photos],
                    ),
                  );
                  controller.updateConcrete(concrete);
                },
                onTapAdd: (paths) async {
                  final news = await controller.createNewPhotos(paths);
                  final concrete = inspection.concrete.copyWith(
                    compressiveStrength2:
                        inspection.concrete.compressiveStrength2.copyWith(
                      photos: [
                        ...inspection.concrete.compressiveStrength2.photos,
                        ...news
                      ],
                    ),
                  );
                  controller.updateConcrete(concrete);
                },
                onTapDelete: (photo) async {
                  final news = inspection.concrete.compressiveStrength2.photos
                      .whereNot((p) => p.image == photo.image)
                      .toList();
                  final concrete = inspection.concrete.copyWith(
                    compressiveStrength2:
                        inspection.concrete.compressiveStrength2.copyWith(
                      photos: [...news],
                    ),
                  );
                  controller.updateConcrete(concrete);
                  await controller.deletePhoto(photo);
                },
              ),
            ),
          ],
          SectionItem(
            title: '調査できた範囲',
            incomplete: inspection.concrete.coverage == null,
            child: DropdownField<Coverage>(
              value: SelectionItem.orNull(
                value: inspection.concrete.coverage,
                name: inspection.concrete.coverage?.label,
              ),
              all: Coverage.values
                  .map((value) => SelectionItem(
                        value: value,
                        name: value.label,
                      ))
                  .toList(),
              onSelect: (coverage) {
                final concrete =
                    inspection.concrete.copyWith(coverage: coverage);
                controller.updateConcrete(concrete);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.concrete.remarks ?? '',
            onChange: (text) {
              final concrete = inspection.concrete.copyWith(remarks: text);
              controller.updateConcrete(concrete);
            },
          ),
        ),
      ],
    );
  }
}
