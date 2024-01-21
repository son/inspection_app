import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/floor/floor.dart';
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

class FloorSection extends HookConsumerWidget {
  const FloorSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '床',
      complete: inspection.floor.complete,
      actions: [
        SectionMenuButton(
          title: '「床」の項目全てを一括で設定します',
          notApplicable: inspection.floor.notApplicable,
          onTapAllPassed: () {
            controller.updateFloor(inspection.floor.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateFloor(Floor(
              notApplicable: !inspection.floor.notApplicable,
            ));
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 著しいひび割れ\n劣化、欠損',
          strikeThrough: inspection.floor.notApplicable,
          incomplete: inspection.floor.damage.result == Result.none,
          child: DropdownField.result(
            result: inspection.floor.damage.result,
            onSelect: (result) {
              final damage = inspection.floor.damage.copyWith(result: result);
              final floor = inspection.floor.copyWith(damage: damage);
              controller.updateFloor(floor);
            },
          ),
        ),
        if (inspection.floor.damage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅',
            indent: true,
            incomplete: inspection.floor.damage.max == null,
            child: PrimaryTextField(
              initialText: inspection.floor.damage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final damage = inspection.floor.damage.copyWith(max: max);
                final floor = inspection.floor.copyWith(damage: damage);
                controller.updateFloor(floor);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            incomplete: inspection.floor.damage.part?.isEmpty ?? true,
            indent: true,
            child: PrimaryTextField(
              initialText: inspection.floor.damage.part ?? '',
              onChange: (text) {
                final damage = inspection.floor.damage.copyWith(part: text);
                final floor = inspection.floor.copyWith(damage: damage);
                controller.updateFloor(floor);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.floor.damage.photos,
              onChange: (photos) {
                final floor = inspection.floor.copyWith(
                  damage: inspection.floor.damage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateFloor(floor);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final floor = inspection.floor.copyWith(
                  damage: inspection.floor.damage.copyWith(
                    photos: [...inspection.floor.damage.photos, ...news],
                  ),
                );
                controller.updateFloor(floor);
              },
              onTapDelete: (photo) async {
                final news = inspection.floor.damage.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final floor = inspection.floor.copyWith(
                  damage: inspection.floor.damage.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateFloor(floor);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          incomplete: inspection.floor.sinking.result == Result.none,
          title: '[構造] 著しい沈み',
          strikeThrough: inspection.floor.notApplicable,
          child: DropdownField.result(
            result: inspection.floor.sinking.result,
            onSelect: (result) {
              final sinking = inspection.floor.sinking.copyWith(result: result);
              final floor = inspection.floor.copyWith(sinking: sinking);
              controller.updateFloor(floor);
            },
          ),
        ),
        if (inspection.floor.sinking.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.floor.sinking.part?.isEmpty ?? true,
            child: PrimaryTextField(
              initialText: inspection.floor.sinking.part ?? '',
              onChange: (text) {
                final sinking = inspection.floor.sinking.copyWith(part: text);
                final floor = inspection.floor.copyWith(sinking: sinking);
                controller.updateFloor(floor);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.floor.sinking.photos,
              onChange: (photos) {
                final floor = inspection.floor.copyWith(
                  sinking: inspection.floor.sinking.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateFloor(floor);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final floor = inspection.floor.copyWith(
                  sinking: inspection.floor.sinking.copyWith(
                    photos: [...inspection.floor.sinking.photos, ...news],
                  ),
                );
                controller.updateFloor(floor);
              },
              onTapDelete: (photo) async {
                final news = inspection.floor.sinking.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final floor = inspection.floor.copyWith(
                  sinking: inspection.floor.sinking.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateFloor(floor);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 6/1000以上の傾斜',
          strikeThrough: inspection.floor.notApplicable,
          incomplete: inspection.floor.inclination.result == Result.none,
          child: DropdownField.result(
            result: inspection.floor.inclination.result,
            onSelect: (result) {
              final inclination =
                  inspection.floor.inclination.copyWith(result: result);
              final floor = inspection.floor.copyWith(inclination: inclination);
              controller.updateFloor(floor);
            },
          ),
        ),
        if (inspection.floor.inclination.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '当該部分の傾斜',
            indent: true,
            incomplete: inspection.floor.inclination.max == null,
            child: PrimaryTextField(
              initialText: inspection.floor.inclination.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: '/1000',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final inclination =
                    inspection.floor.inclination.copyWith(max: max);
                final floor =
                    inspection.floor.copyWith(inclination: inclination);
                controller.updateFloor(floor);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '最も傾きがある場所',
            indent: true,
            incomplete: inspection.floor.inclination.part?.isEmpty ?? true,
            child: PrimaryTextField(
              initialText: inspection.floor.inclination.part ?? '',
              onChange: (text) {
                final inclination =
                    inspection.floor.inclination.copyWith(part: text);
                final floor =
                    inspection.floor.copyWith(inclination: inclination);
                controller.updateFloor(floor);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.floor.inclination.photos,
              onChange: (photos) {
                final floor = inspection.floor.copyWith(
                  inclination: inspection.floor.inclination.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateFloor(floor);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final floor = inspection.floor.copyWith(
                  inclination: inspection.floor.inclination.copyWith(
                    photos: [...inspection.floor.inclination.photos, ...news],
                  ),
                );
                controller.updateFloor(floor);
              },
              onTapDelete: (photo) async {
                final news = inspection.floor.inclination.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final floor = inspection.floor.copyWith(
                  inclination: inspection.floor.inclination.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateFloor(floor);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          strikeThrough: inspection.floor.notApplicable,
          incomplete: inspection.floor.coverage == null,
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.floor.coverage,
              name: inspection.floor.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final floor = inspection.floor.copyWith(coverage: coverage);
              controller.updateFloor(floor);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.floor.remarks ?? '',
            onChange: (text) {
              final floor = inspection.floor.copyWith(remarks: text);
              controller.updateFloor(floor);
            },
          ),
        ),
      ],
    );
  }
}
