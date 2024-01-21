import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/inner_wall/inner_wall.dart';
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

class InnerWallSection extends HookConsumerWidget {
  const InnerWallSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '内壁',
      complete: inspection.innerWall.complete,
      actions: [
        MenuButton(
          title: '「内壁」の項目全てを一括で設定します',
          notApplicable: inspection.innerWall.notApplicable,
          onTapAllPassed: () {
            controller.updateInnerWall(inspection.innerWall.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateInnerWall(
              InnerWall(notApplicable: !inspection.innerWall.notApplicable),
            );
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          incomplete:
              inspection.innerWall.foundationDamage.result == Result.none,
          title: '[構造] ひび割れ、欠損\n浮き、はらみ、剥落',
          child: DropdownField.result(
            result: inspection.innerWall.foundationDamage.result,
            onSelect: (result) {
              final foundationDamage = inspection.innerWall.foundationDamage
                  .copyWith(result: result);
              final innerWall = inspection.innerWall
                  .copyWith(foundationDamage: foundationDamage);
              controller.updateInnerWall(innerWall);
            },
          ),
        ),
        if (inspection.innerWall.foundationDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅',
            indent: true,
            incomplete: inspection.innerWall.foundationDamage.max == null,
            child: PrimaryTextField(
              initialText:
                  inspection.innerWall.foundationDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final foundationDamage =
                    inspection.innerWall.foundationDamage.copyWith(max: max);
                final innerWall = inspection.innerWall
                    .copyWith(foundationDamage: foundationDamage);
                controller.updateInnerWall(innerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete:
                inspection.innerWall.foundationDamage.part?.isEmpty ?? true,
            child: PrimaryTextField(
              initialText: inspection.innerWall.foundationDamage.part ?? '',
              onChange: (text) {
                final foundationDamage =
                    inspection.innerWall.foundationDamage.copyWith(part: text);
                final innerWall = inspection.innerWall
                    .copyWith(foundationDamage: foundationDamage);
                controller.updateInnerWall(innerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.innerWall.foundationDamage.photos,
              onChange: (photos) {
                final innerWall = inspection.innerWall.copyWith(
                  foundationDamage:
                      inspection.innerWall.foundationDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateInnerWall(innerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final innerWall = inspection.innerWall.copyWith(
                  foundationDamage:
                      inspection.innerWall.foundationDamage.copyWith(
                    photos: [
                      ...inspection.innerWall.foundationDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateInnerWall(innerWall);
              },
              onTapDelete: (photo) async {
                final news = inspection.innerWall.foundationDamage.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final innerWall = inspection.innerWall.copyWith(
                  foundationDamage:
                      inspection.innerWall.foundationDamage.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateInnerWall(innerWall);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 6/1000以上の傾斜',
          incomplete:
              inspection.innerWall.foundationInclination.result == Result.none,
          child: DropdownField.result(
            result: inspection.innerWall.foundationInclination.result,
            onSelect: (result) {
              final foundationInclination = inspection
                  .innerWall.foundationInclination
                  .copyWith(result: result);
              final innerWall = inspection.innerWall
                  .copyWith(foundationInclination: foundationInclination);
              controller.updateInnerWall(innerWall);
            },
          ),
        ),
        if (inspection.innerWall.foundationInclination.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '当該部分の傾斜',
            indent: true,
            incomplete: inspection.innerWall.foundationInclination.max == null,
            child: PrimaryTextField(
              initialText:
                  inspection.innerWall.foundationInclination.max?.toString() ??
                      '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: '/1000',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final foundationInclination = inspection
                    .innerWall.foundationInclination
                    .copyWith(max: max);
                final innerWall = inspection.innerWall
                    .copyWith(foundationInclination: foundationInclination);
                controller.updateInnerWall(innerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '壁の最も傾きがある場所',
            indent: true,
            incomplete:
                inspection.innerWall.foundationInclination.part?.isEmpty ??
                    true,
            child: PrimaryTextField(
              initialText:
                  inspection.innerWall.foundationInclination.part ?? '',
              onChange: (text) {
                final foundationInclination = inspection
                    .innerWall.foundationInclination
                    .copyWith(part: text);
                final innerWall = inspection.innerWall
                    .copyWith(foundationInclination: foundationInclination);
                controller.updateInnerWall(innerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.innerWall.foundationInclination.photos,
              onChange: (photos) {
                final innerWall = inspection.innerWall.copyWith(
                  foundationInclination:
                      inspection.innerWall.foundationInclination.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateInnerWall(innerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final innerWall = inspection.innerWall.copyWith(
                  foundationInclination:
                      inspection.innerWall.foundationInclination.copyWith(
                    photos: [
                      ...inspection.innerWall.foundationInclination.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateInnerWall(innerWall);
              },
              onTapDelete: (photo) async {
                final news = inspection.innerWall.foundationInclination.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final innerWall = inspection.innerWall.copyWith(
                  foundationInclination:
                      inspection.innerWall.foundationInclination.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateInnerWall(innerWall);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[雨水] 内壁の雨漏りの跡',
          incomplete:
              inspection.innerWall.rainInnerWallLeak.result == Result.none,
          child: DropdownField.result(
            result: inspection.innerWall.rainInnerWallLeak.result,
            onSelect: (result) {
              final rainInnerWallLeak = inspection.innerWall.rainInnerWallLeak
                  .copyWith(result: result);
              final innerWall = inspection.innerWall
                  .copyWith(rainInnerWallLeak: rainInnerWallLeak);
              controller.updateInnerWall(innerWall);
            },
          ),
        ),
        if (inspection.innerWall.rainInnerWallLeak.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            incomplete:
                inspection.innerWall.rainInnerWallLeak.part?.isEmpty ?? true,
            indent: true,
            child: PrimaryTextField(
              initialText: inspection.innerWall.rainInnerWallLeak.part ?? '',
              onChange: (text) {
                final rainInnerWallLeak =
                    inspection.innerWall.rainInnerWallLeak.copyWith(part: text);
                final innerWall = inspection.innerWall
                    .copyWith(rainInnerWallLeak: rainInnerWallLeak);
                controller.updateInnerWall(innerWall);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.innerWall.rainInnerWallLeak.photos,
              onChange: (photos) {
                final innerWall = inspection.innerWall.copyWith(
                  rainInnerWallLeak:
                      inspection.innerWall.rainInnerWallLeak.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateInnerWall(innerWall);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final innerWall = inspection.innerWall.copyWith(
                  rainInnerWallLeak:
                      inspection.innerWall.rainInnerWallLeak.copyWith(
                    photos: [
                      ...inspection.innerWall.rainInnerWallLeak.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateInnerWall(innerWall);
              },
              onTapDelete: (photo) async {
                final news = inspection.innerWall.rainInnerWallLeak.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final innerWall = inspection.innerWall.copyWith(
                  rainInnerWallLeak:
                      inspection.innerWall.rainInnerWallLeak.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updateInnerWall(innerWall);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          incomplete: inspection.innerWall.coverage == null,
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.innerWall.coverage,
              name: inspection.innerWall.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final innerWall =
                  inspection.innerWall.copyWith(coverage: coverage);
              controller.updateInnerWall(innerWall);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            initialText: inspection.innerWall.remarks ?? '',
            textAlign: TextAlign.start,
            maxLines: 100,
            onChange: (remarks) {
              final innerWall = inspection.innerWall.copyWith(remarks: remarks);
              controller.updateInnerWall(innerWall);
            },
          ),
        ),
      ],
    );
  }
}
