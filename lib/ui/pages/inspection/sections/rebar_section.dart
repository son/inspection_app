import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/rebar/rebar.dart';
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

class RebarSection extends HookConsumerWidget {
  const RebarSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '鉄筋探査',
      complete: inspection.rebar.complete,
      actions: [
        MenuButton(
          title: '「鉄筋探査」の項目全てを一括で設定します',
          notApplicable: inspection.rebar.notApplicable,
          onTapAllPassed: () {
            controller.updateRebar(inspection.rebar.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateRebar(const Rebar(notApplicable: true));
          },
        ),
      ],
      children: [
        SectionItem(
          title: '鉄筋探査の有無',
          child: DropdownField<bool>(
            value: () {
              if (inspection.rebar.exploration == null) return null;
              return SelectionItem(
                value: inspection.rebar.exploration!,
                name: inspection.rebar.exploration!
                    ? 'あり（小規模住宅で基礎に劣化事象あり）'
                    : 'なし',
              );
            }(),
            all: [false, true]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? 'あり（小規模住宅で基礎に劣化事象あり）' : 'なし',
                    ))
                .toList(),
            onSelect: (isOn) {
              final rebar = inspection.rebar.copyWith(exploration: isOn);
              controller.updateRebar(rebar);
            },
          ),
        ),
        if (inspection.rebar.exploration ?? false) ...[
          SectionItem(
            axis: Axis.horizontal,
            incomplete: inspection.rebar.side.result == Result.none,
            title: '基礎の鉄筋本数、間隔（立上り）',
            child: DropdownField.result(
              result: inspection.rebar.side.result,
              onSelect: (result) {
                final side = inspection.rebar.side.copyWith(result: result);
                final rebar = inspection.rebar.copyWith(side: side);
                controller.updateRebar(rebar);
              },
            ),
          ),
          if (inspection.rebar.side.result == Result.failure) ...[
            SectionItem(
              axis: Axis.vertical,
              child: PhotoCaptionsItem(
                photos: inspection.rebar.side.photos,
                onChange: (photos) {
                  final rebar = inspection.rebar.copyWith(
                    side: inspection.rebar.side.copyWith(
                      photos: [...photos],
                    ),
                  );
                  controller.updateRebar(rebar);
                },
                onTapAdd: (paths) async {
                  final news = await controller.createNewPhotos(paths);
                  final rebar = inspection.rebar.copyWith(
                    side: inspection.rebar.side.copyWith(
                      photos: [...inspection.rebar.side.photos, ...news],
                    ),
                  );
                  controller.updateRebar(rebar);
                },
                onTapDelete: (photo) async {
                  final news = inspection.rebar.side.photos
                      .whereNot((p) => p.image == photo.image)
                      .toList();
                  final rebar = inspection.rebar.copyWith(
                    side: inspection.rebar.side.copyWith(
                      photos: [...news],
                    ),
                  );
                  controller.updateRebar(rebar);
                  await controller.deletePhoto(photo);
                },
              ),
            ),
          ],
          SectionItem(
            axis: Axis.horizontal,
            title: '基礎の鉄筋本数、間隔（底盤）',
            incomplete: inspection.rebar.bottom.result == Result.none,
            child: DropdownField.result(
              result: inspection.rebar.bottom.result,
              onSelect: (result) {
                final bottom = inspection.rebar.bottom.copyWith(result: result);
                final rebar = inspection.rebar.copyWith(bottom: bottom);
                controller.updateRebar(rebar);
              },
            ),
          ),
          if (inspection.rebar.bottom.result == Result.failure) ...[
            SectionItem(
              axis: Axis.vertical,
              child: PhotoCaptionsItem(
                photos: inspection.rebar.bottom.photos,
                onChange: (photos) {
                  final rebar = inspection.rebar.copyWith(
                    bottom: inspection.rebar.bottom.copyWith(
                      photos: [...photos],
                    ),
                  );
                  controller.updateRebar(rebar);
                },
                onTapAdd: (paths) async {
                  final news = await controller.createNewPhotos(paths);
                  final rebar = inspection.rebar.copyWith(
                    bottom: inspection.rebar.bottom.copyWith(
                      photos: [...inspection.rebar.bottom.photos, ...news],
                    ),
                  );
                  controller.updateRebar(rebar);
                },
                onTapDelete: (photo) async {
                  final news = inspection.rebar.bottom.photos
                      .whereNot((p) => p.image == photo.image)
                      .toList();
                  final rebar = inspection.rebar.copyWith(
                    bottom: inspection.rebar.bottom.copyWith(
                      photos: [...news],
                    ),
                  );
                  controller.updateRebar(rebar);
                  await controller.deletePhoto(photo);
                },
              ),
            ),
          ],
          SectionItem(
            title: '調査できた範囲',
            incomplete: inspection.rebar.coverage == null,
            child: DropdownField<Coverage>(
              value: SelectionItem.orNull(
                value: inspection.rebar.coverage,
                name: inspection.rebar.coverage?.label,
              ),
              all: Coverage.values
                  .map((value) => SelectionItem(
                        value: value,
                        name: value.label,
                      ))
                  .toList(),
              onSelect: (coverage) {
                final rebar = inspection.rebar.copyWith(coverage: coverage);
                controller.updateRebar(rebar);
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
            initialText: inspection.rebar.remarks ?? '',
            onChange: (text) {
              final rebar = inspection.rebar.copyWith(remarks: text);
              controller.updateRebar(rebar);
            },
          ),
        ),
      ],
    );
  }
}
