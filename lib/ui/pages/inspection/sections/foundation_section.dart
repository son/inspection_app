import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/image_source_sheet.dart';
import 'package:inspection_app/ui/components/multi_dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_check_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class FoundationSection extends HookConsumerWidget {
  const FoundationSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '基礎',
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
          axis: Axis.horizontal,
          title: '仕上げ',
          child: MultiDropdownField<String>(
            values: inspection.foundation.finishings
                .map((e) => SelectionItem(value: e, name: e))
                .toList(),
            all: ['コンクリート', 'モルタル、その他塗り', 'その他']
                .map((value) => SelectionItem(
                      value: value,
                      name: value,
                    ))
                .toList(),
            onSelect: (finishings) {
              controller.updateFoundation(
                inspection.foundation.copyWith(finishings: finishings),
              );
            },
          ),
        ),
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 幅0.5mm以上のひび割れ',
          child: DropdownField.result(
            result: inspection.foundation.crack.result,
            onSelect: (result) {
              final crack =
                  inspection.foundation.crack.copyWith(result: result);
              final foundation = inspection.foundation.copyWith(crack: crack);
              controller.updateFoundation(foundation);
            },
          ),
        ),
        if (inspection.foundation.crack.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.foundation.crack.directions
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
                final crack = inspection.foundation.crack
                    .copyWith(directions: directions);
                final foundation = inspection.foundation.copyWith(crack: crack);
                controller.updateFoundation(foundation);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　最大ひび割れ幅',
            child: PrimaryTextField(
              initialText: inspection.foundation.crack.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final crack = inspection.foundation.crack.copyWith(max: max);
                final foundation = inspection.foundation.copyWith(crack: crack);
                controller.updateFoundation(foundation);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.foundation.crack.photos,
              onChange: (photos) {
                final foundation = inspection.foundation.copyWith(
                  crack: inspection.foundation.crack.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateFoundation(foundation);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final foundation = inspection.foundation.copyWith(
                  crack: inspection.foundation.crack.copyWith(
                    photos: [...inspection.foundation.crack.photos, ...news],
                  ),
                );
                controller.updateFoundation(foundation);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 深さ2mm以上の欠損',
          child: DropdownField.result(
            result: inspection.foundation.damage.result,
            onSelect: (result) {
              final damage =
                  inspection.foundation.damage.copyWith(result: result);
              final foundation = inspection.foundation.copyWith(damage: damage);
              controller.updateFoundation(foundation);
            },
          ),
        ),
        if (inspection.foundation.damage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.foundation.damage.directions
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
                final damage = inspection.foundation.damage
                    .copyWith(directions: directions);
                final foundation =
                    inspection.foundation.copyWith(damage: damage);
                controller.updateFoundation(foundation);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　最大欠損深さ',
            child: PrimaryTextField(
              initialText: inspection.foundation.damage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final damage = inspection.foundation.damage.copyWith(max: max);
                final foundation =
                    inspection.foundation.copyWith(damage: damage);
                controller.updateFoundation(foundation);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.foundation.damage.photos,
              onChange: (photos) {
                final foundation = inspection.foundation.copyWith(
                  damage: inspection.foundation.damage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateFoundation(foundation);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final foundation = inspection.foundation.copyWith(
                  damage: inspection.foundation.damage.copyWith(
                    photos: [...inspection.foundation.damage.photos, ...news],
                  ),
                );
                controller.updateFoundation(foundation);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] コンクリートの著しい劣化',
          child: DropdownField.result(
            result: inspection.foundation.concreteDeterioration.result,
            onSelect: (result) {
              final concreteDeterioration =
                  inspection.foundation.damage.copyWith(result: result);
              final foundation = inspection.foundation
                  .copyWith(concreteDeterioration: concreteDeterioration);
              controller.updateFoundation(foundation);
            },
          ),
        ),
        if (inspection.foundation.concreteDeterioration.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.foundation.concreteDeterioration.directions
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
                final concreteDeterioration = inspection
                    .foundation.concreteDeterioration
                    .copyWith(directions: directions);
                final foundation = inspection.foundation
                    .copyWith(concreteDeterioration: concreteDeterioration);
                controller.updateFoundation(foundation);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　問題箇所詳細',
            child: PrimaryCheckList(
              all: DAMAGE_DETAILS,
              selecteds:
                  inspection.foundation.concreteDeterioration.details.toSet(),
              onSelect: (selecteds) {
                final concreteDeterioration = inspection
                    .foundation.concreteDeterioration
                    .copyWith(details: selecteds.toList());
                final foundation = inspection.foundation
                    .copyWith(concreteDeterioration: concreteDeterioration);
                controller.updateFoundation(foundation);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.foundation.concreteDeterioration.photos,
              onChange: (photos) {
                final foundation = inspection.foundation.copyWith(
                  concreteDeterioration:
                      inspection.foundation.concreteDeterioration.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateFoundation(foundation);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final foundation = inspection.foundation.copyWith(
                  concreteDeterioration:
                      inspection.foundation.concreteDeterioration.copyWith(
                    photos: [
                      ...inspection.foundation.concreteDeterioration.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateFoundation(foundation);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] さび汁を伴うひび割れ、欠損',
          child: DropdownField.result(
            result: inspection.foundation.rust.result,
            onSelect: (result) {
              final rust =
                  inspection.foundation.damage.copyWith(result: result);
              final foundation = inspection.foundation.copyWith(rust: rust);
              controller.updateFoundation(foundation);
            },
          ),
        ),
        if (inspection.foundation.rust.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.foundation.rust.directions
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
                final rust =
                    inspection.foundation.rust.copyWith(directions: directions);
                final foundation = inspection.foundation.copyWith(rust: rust);
                controller.updateFoundation(foundation);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.foundation.rust.photos,
              onChange: (photos) {
                final foundation = inspection.foundation.copyWith(
                  rust: inspection.foundation.rust.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateFoundation(foundation);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final foundation = inspection.foundation.copyWith(
                  rust: inspection.foundation.rust.copyWith(
                    photos: [...inspection.foundation.rust.photos, ...news],
                  ),
                );
                controller.updateFoundation(foundation);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 鉄筋の露出',
          child: DropdownField.result(
            result: inspection.foundation.rebarExposure.result,
            onSelect: (result) {
              final rebarExposure =
                  inspection.foundation.damage.copyWith(result: result);
              final foundation =
                  inspection.foundation.copyWith(rebarExposure: rebarExposure);
              controller.updateFoundation(foundation);
            },
          ),
        ),
        if (inspection.foundation.rebarExposure.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: MultiDropdownField<Direction>(
              values: inspection.foundation.rebarExposure.directions
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
                final rebarExposure = inspection.foundation.rebarExposure
                    .copyWith(directions: directions);
                final foundation = inspection.foundation
                    .copyWith(rebarExposure: rebarExposure);
                controller.updateFoundation(foundation);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.foundation.rebarExposure.photos,
              onChange: (photos) {
                final foundation = inspection.foundation.copyWith(
                  rebarExposure: inspection.foundation.rebarExposure.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateFoundation(foundation);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final foundation = inspection.foundation.copyWith(
                  rebarExposure: inspection.foundation.rebarExposure.copyWith(
                    photos: [
                      ...inspection.foundation.rebarExposure.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateFoundation(foundation);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.foundation.coverage,
              name: inspection.foundation.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final foundation =
                  inspection.foundation.copyWith(coverage: coverage);
              controller.updateFoundation(foundation);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            initialText: inspection.foundation.remarks,
            textAlign: TextAlign.start,
            maxLines: 100,
            onChange: (remarks) {
              final foundation =
                  inspection.foundation.copyWith(remarks: remarks);
              controller.updateFoundation(foundation);
            },
          ),
        ),
      ],
    );
  }
}
