import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/outer_wall/outer_wall.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/multi_dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class OuterWallSection extends HookConsumerWidget {
  const OuterWallSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '外壁及び軒裏',
      complete: inspection.outerWall.complete,
      actions: [
        MenuButton(
          title: '「外壁及び軒裏」の項目全てを一括で設定します',
          notApplicable: inspection.outerWall.notApplicable,
          onTapAllPassed: () {
            controller.updateOuterWall(inspection.outerWall.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateOuterWall(const OuterWall(notApplicable: true));
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          title: '仕上げ',
          incomplete: inspection.outerWall.finishings.isEmpty,
          child: MultiDropdownField<String>(
            values: inspection.outerWall.finishings
                .map((e) => SelectionItem(
                      value: e,
                      name: e,
                    ))
                .toList(),
            all: ['乾式仕上げ（サイティングボード）', 'タイル（湿式工法）', '塗壁など', 'その他']
                .map((value) => SelectionItem(
                      value: value,
                      name: value,
                    ))
                .toList(),
            onSelect: (finishings) {
              controller.updateOuterWall(
                  inspection.outerWall.copyWith(finishings: finishings));
            },
          ),
        ),
        SectionItem(
          axis: Axis.horizontal,
          incomplete: inspection.outerWall.dryDamage.result == Result.none,
          title: '[乾式] ひび割れ、欠損、浮き\nはらみ、剥落',
          child: DropdownField.result(
            result: inspection.outerWall.dryDamage.result,
            onSelect: (result) {
              final dryDamage =
                  inspection.outerWall.dryDamage.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(dryDamage: dryDamage);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.dryDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.dryDamage.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.dryDamage.directions
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
                final dryDamage = inspection.outerWall.dryDamage
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(dryDamage: dryDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅・欠損深さ',
            incomplete: inspection.outerWall.dryDamage.max == null,
            indent: true,
            child: PrimaryTextField(
              initialText: inspection.outerWall.dryDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final dryDamage =
                    inspection.outerWall.dryDamage.copyWith(max: max);
                final outerWall =
                    inspection.outerWall.copyWith(dryDamage: dryDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.dryDamage.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  dryDamage: inspection.outerWall.dryDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  dryDamage: inspection.outerWall.dryDamage.copyWith(
                    photos: [...inspection.outerWall.dryDamage.photos, ...news],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[乾式] 複数にまたがる\nひび割れ、欠損',
          incomplete: inspection.outerWall.dryWideDamage.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.dryWideDamage.result,
            onSelect: (result) {
              final dryWideDamage =
                  inspection.outerWall.dryWideDamage.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(dryWideDamage: dryWideDamage);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.dryWideDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.dryWideDamage.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.dryWideDamage.directions
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
                final dryWideDamage = inspection.outerWall.dryWideDamage
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(dryWideDamage: dryWideDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅・欠損深さ',
            incomplete: inspection.outerWall.dryWideDamage.max == null,
            indent: true,
            child: PrimaryTextField(
              initialText:
                  inspection.outerWall.dryWideDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final dryWideDamage =
                    inspection.outerWall.dryWideDamage.copyWith(max: max);
                final outerWall =
                    inspection.outerWall.copyWith(dryWideDamage: dryWideDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.dryWideDamage.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  dryWideDamage: inspection.outerWall.dryWideDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  dryWideDamage: inspection.outerWall.dryWideDamage.copyWith(
                    photos: [
                      ...inspection.outerWall.dryWideDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[乾式] 金属の著しいさび\n化学的侵食',
          incomplete: inspection.outerWall.dryCorrosion.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.dryCorrosion.result,
            onSelect: (result) {
              final dryCorrosion =
                  inspection.outerWall.dryCorrosion.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(dryCorrosion: dryCorrosion);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.dryCorrosion.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.dryCorrosion.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.dryCorrosion.directions
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
                final dryRust = inspection.outerWall.dryCorrosion
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(dryCorrosion: dryRust);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.dryCorrosion.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  dryCorrosion: inspection.outerWall.dryCorrosion.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  dryCorrosion: inspection.outerWall.dryCorrosion.copyWith(
                    photos: [
                      ...inspection.outerWall.dryCorrosion.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[タイル] ひび割れ、欠損、浮き\nはらみ、剥落',
          incomplete: inspection.outerWall.tileDamage.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.tileDamage.result,
            onSelect: (result) {
              final tileDamage =
                  inspection.outerWall.tileDamage.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(tileDamage: tileDamage);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.tileDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.tileDamage.directions
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
                final tileDamage = inspection.outerWall.tileDamage
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(tileDamage: tileDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅・欠損深さ',
            indent: true,
            incomplete: inspection.outerWall.tileDamage.max == null,
            child: PrimaryTextField(
              initialText:
                  inspection.outerWall.tileDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final tileDamage =
                    inspection.outerWall.tileDamage.copyWith(max: max);
                final outerWall =
                    inspection.outerWall.copyWith(tileDamage: tileDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.tileDamage.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  tileDamage: inspection.outerWall.tileDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  tileDamage: inspection.outerWall.tileDamage.copyWith(
                    photos: [
                      ...inspection.outerWall.tileDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[タイル] 複数にまたがる\nひび割れ、欠損',
          incomplete: inspection.outerWall.tileWideDamage.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.tileWideDamage.result,
            onSelect: (result) {
              final tileWideDamage =
                  inspection.outerWall.tileWideDamage.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(tileWideDamage: tileWideDamage);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.tileWideDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.tileWideDamage.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.tileWideDamage.directions
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
                final tileWideDamage = inspection.outerWall.tileWideDamage
                    .copyWith(directions: directions);
                final outerWall = inspection.outerWall
                    .copyWith(tileWideDamage: tileWideDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅・欠損深さ',
            indent: true,
            incomplete: inspection.outerWall.tileWideDamage.max == null,
            child: PrimaryTextField(
              initialText:
                  inspection.outerWall.tileWideDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final tileWideDamage =
                    inspection.outerWall.tileWideDamage.copyWith(max: max);
                final outerWall = inspection.outerWall
                    .copyWith(tileWideDamage: tileWideDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.tileWideDamage.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  tileWideDamage: inspection.outerWall.tileWideDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  tileWideDamage: inspection.outerWall.tileWideDamage.copyWith(
                    photos: [
                      ...inspection.outerWall.tileWideDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[タイル] 仕上げ材の著しい浮き',
          incomplete: inspection.outerWall.tileFloat.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.tileFloat.result,
            onSelect: (result) {
              final tileFloat =
                  inspection.outerWall.tileFloat.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(tileFloat: tileFloat);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.tileFloat.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.tileFloat.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.tileFloat.directions
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
                final tileFloat = inspection.outerWall.tileFloat
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(tileFloat: tileFloat);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.tileFloat.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  tileFloat: inspection.outerWall.tileFloat.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  tileFloat: inspection.outerWall.tileFloat.copyWith(
                    photos: [...inspection.outerWall.tileFloat.photos, ...news],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[塗壁] ひび割れ、欠損、浮き\nはらみ、剥落',
          incomplete: inspection.outerWall.paintDamage.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.paintDamage.result,
            onSelect: (result) {
              final paintDamage =
                  inspection.outerWall.paintDamage.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(paintDamage: paintDamage);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.paintDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            incomplete: inspection.outerWall.paintDamage.directions.isEmpty,
            indent: true,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.paintDamage.directions
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
                final paintDamage = inspection.outerWall.paintDamage
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(paintDamage: paintDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.paintDamage.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  paintDamage: inspection.outerWall.paintDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  paintDamage: inspection.outerWall.paintDamage.copyWith(
                    photos: [
                      ...inspection.outerWall.paintDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[塗壁] 仕上げ材の著しい浮き',
          incomplete: inspection.outerWall.paintFloat.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.paintFloat.result,
            onSelect: (result) {
              final paintFloat =
                  inspection.outerWall.paintFloat.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(paintFloat: paintFloat);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.paintFloat.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.paintFloat.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.paintFloat.directions
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
                final paintFloat = inspection.outerWall.paintFloat
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(paintFloat: paintFloat);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.paintFloat.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  paintFloat: inspection.outerWall.paintFloat.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  paintFloat: inspection.outerWall.paintFloat.copyWith(
                    photos: [
                      ...inspection.outerWall.paintFloat.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[その他] ひび割れ、欠損、浮き\nはらみ、剥落',
          incomplete: inspection.outerWall.otherDamage.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.otherDamage.result,
            onSelect: (result) {
              final otherDamage =
                  inspection.outerWall.otherDamage.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(otherDamage: otherDamage);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.otherDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.otherDamage.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.otherDamage.directions
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
                final otherDamage = inspection.outerWall.otherDamage
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(otherDamage: otherDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅・欠損深さ',
            indent: true,
            incomplete: inspection.outerWall.otherDamage.max == null,
            child: PrimaryTextField(
              initialText:
                  inspection.outerWall.otherDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final otherDamage =
                    inspection.outerWall.otherDamage.copyWith(max: max);
                final outerWall =
                    inspection.outerWall.copyWith(otherDamage: otherDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.otherDamage.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  otherDamage: inspection.outerWall.otherDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  otherDamage: inspection.outerWall.otherDamage.copyWith(
                    photos: [
                      ...inspection.outerWall.otherDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[その他] 複数にまたがる\nひび割れ、欠損',
          incomplete:
              inspection.outerWall.otherWideDamage.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.otherWideDamage.result,
            onSelect: (result) {
              final otherWideDamage =
                  inspection.outerWall.otherWideDamage.copyWith(result: result);
              final outerWall = inspection.outerWall
                  .copyWith(otherWideDamage: otherWideDamage);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.otherWideDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.otherWideDamage.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.otherWideDamage.directions
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
                final otherWideDamage = inspection.outerWall.otherWideDamage
                    .copyWith(directions: directions);
                final outerWall = inspection.outerWall
                    .copyWith(otherWideDamage: otherWideDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅・欠損深さ',
            indent: true,
            incomplete: inspection.outerWall.otherWideDamage.max == null,
            child: PrimaryTextField(
              initialText:
                  inspection.outerWall.otherWideDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final otherWideDamage =
                    inspection.outerWall.otherWideDamage.copyWith(max: max);
                final outerWall = inspection.outerWall
                    .copyWith(otherWideDamage: otherWideDamage);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.otherWideDamage.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  otherWideDamage:
                      inspection.outerWall.otherWideDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  otherWideDamage:
                      inspection.outerWall.otherWideDamage.copyWith(
                    photos: [
                      ...inspection.outerWall.otherWideDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[その他] 金属の著しいさび\n化学的侵食',
          incomplete: inspection.outerWall.otherCorrosion.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.otherCorrosion.result,
            onSelect: (result) {
              final otherCorrosion =
                  inspection.outerWall.otherCorrosion.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(otherCorrosion: otherCorrosion);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.otherCorrosion.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.otherCorrosion.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.otherCorrosion.directions
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
                final otherCorrosion = inspection.outerWall.otherCorrosion
                    .copyWith(directions: directions);
                final outerWall = inspection.outerWall
                    .copyWith(otherCorrosion: otherCorrosion);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.otherCorrosion.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  otherCorrosion: inspection.outerWall.otherCorrosion.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  otherCorrosion: inspection.outerWall.otherCorrosion.copyWith(
                    photos: [
                      ...inspection.outerWall.otherCorrosion.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[その他] 仕上げ材の著しい浮き',
          incomplete: inspection.outerWall.otherFloat.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.otherFloat.result,
            onSelect: (result) {
              final otherFloat =
                  inspection.outerWall.otherFloat.copyWith(result: result);
              final outerWall =
                  inspection.outerWall.copyWith(otherFloat: otherFloat);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.otherFloat.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.otherFloat.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.otherFloat.directions
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
                final otherFloat = inspection.outerWall.otherFloat
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(otherFloat: otherFloat);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.otherFloat.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  otherFloat: inspection.outerWall.otherFloat.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  otherFloat: inspection.outerWall.otherFloat.copyWith(
                    photos: [
                      ...inspection.outerWall.otherFloat.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[雨水] 外壁シーリング材\nの破断、欠損',
          incomplete:
              inspection.outerWall.rainWallSealing.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.rainWallSealing.result,
            onSelect: (result) {
              final rainWallSealing =
                  inspection.outerWall.rainWallSealing.copyWith(result: result);
              final outerWall = inspection.outerWall
                  .copyWith(rainWallSealing: rainWallSealing);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.rainWallSealing.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.rainWallSealing.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.rainWallSealing.directions
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
                final rainWallSealing = inspection.outerWall.rainWallSealing
                    .copyWith(directions: directions);
                final outerWall = inspection.outerWall
                    .copyWith(rainWallSealing: rainWallSealing);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.rainWallSealing.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  rainWallSealing:
                      inspection.outerWall.rainWallSealing.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  rainWallSealing:
                      inspection.outerWall.rainWallSealing.copyWith(
                    photos: [
                      ...inspection.outerWall.rainWallSealing.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[雨水] 建具の周囲の隙間\n開閉不良',
          incomplete: inspection.outerWall.rainGap.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.rainGap.result,
            onSelect: (result) {
              final rainGap =
                  inspection.outerWall.rainWallSealing.copyWith(result: result);
              final outerWall = inspection.outerWall.copyWith(rainGap: rainGap);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.rainGap.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.outerWall.rainGap.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.rainGap.directions
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
                final rainGap = inspection.outerWall.rainGap
                    .copyWith(directions: directions);
                final outerWall =
                    inspection.outerWall.copyWith(rainGap: rainGap);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.rainGap.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  rainGap: inspection.outerWall.rainGap.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  rainGap: inspection.outerWall.rainGap.copyWith(
                    photos: [...inspection.outerWall.rainGap.photos, ...news],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[雨水] 軒裏天井のシーリング材\nの破断、欠損',
          incomplete:
              inspection.outerWall.rainCeilingSealing.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.rainCeilingSealing.result,
            onSelect: (result) {
              final rainCeilingSealing =
                  inspection.outerWall.rainWallSealing.copyWith(result: result);
              final outerWall = inspection.outerWall
                  .copyWith(rainCeilingSealing: rainCeilingSealing);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.rainCeilingSealing.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete:
                inspection.outerWall.rainCeilingSealing.directions.isEmpty,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.rainCeilingSealing.directions
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
                final rainCeilingSealing = inspection
                    .outerWall.rainCeilingSealing
                    .copyWith(directions: directions);
                final outerWall = inspection.outerWall
                    .copyWith(rainCeilingSealing: rainCeilingSealing);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.rainCeilingSealing.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  rainCeilingSealing:
                      inspection.outerWall.rainCeilingSealing.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  rainCeilingSealing:
                      inspection.outerWall.rainCeilingSealing.copyWith(
                    photos: [
                      ...inspection.outerWall.rainCeilingSealing.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[雨水] 軒裏天井の雨漏りの跡',
          incomplete:
              inspection.outerWall.rainCeilingLeak.result == Result.none,
          child: DropdownField.result(
            result: inspection.outerWall.rainCeilingLeak.result,
            onSelect: (result) {
              final rainCeilingLeak =
                  inspection.outerWall.rainCeilingLeak.copyWith(result: result);
              final outerWall = inspection.outerWall
                  .copyWith(rainCeilingLeak: rainCeilingLeak);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        if (inspection.outerWall.rainCeilingLeak.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            incomplete: inspection.outerWall.rainCeilingLeak.directions.isEmpty,
            indent: true,
            child: MultiDropdownField<Direction>(
              values: inspection.outerWall.rainCeilingLeak.directions
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
                final rainCeilingLeak = inspection.outerWall.rainCeilingLeak
                    .copyWith(directions: directions);
                final outerWall = inspection.outerWall
                    .copyWith(rainCeilingLeak: rainCeilingLeak);
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.outerWall.rainCeilingLeak.photos,
              onChange: (photos) {
                final outerWall = inspection.outerWall.copyWith(
                  rainCeilingLeak:
                      inspection.outerWall.rainCeilingLeak.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final outerWall = inspection.outerWall.copyWith(
                  rainCeilingLeak:
                      inspection.outerWall.rainCeilingLeak.copyWith(
                    photos: [
                      ...inspection.outerWall.rainCeilingLeak.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateOuterWall(outerWall);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          incomplete: inspection.outerWall.coverage == null,
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.outerWall.coverage,
              name: inspection.outerWall.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final outerWall =
                  inspection.outerWall.copyWith(coverage: coverage);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            maxLines: 100,
            textAlign: TextAlign.start,
            initialText: inspection.outerWall.remarks ?? '',
            onChange: (text) {
              final outerWall = inspection.outerWall.copyWith(remarks: text);
              controller.updateOuterWall(outerWall);
            },
          ),
        ),
      ],
    );
  }
}
