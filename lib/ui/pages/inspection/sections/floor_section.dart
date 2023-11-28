import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class FloorSection extends HookConsumerWidget {
  const FloorSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);
    final controller = ref.read(inspectionProvider.notifier);

    return Section(
      title: '床',
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
          title: '[構造] 著しいひび割れ\n劣化、欠損',
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
            title: '　最大ひび割れ幅',
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
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.floor.damage.part,
              onChange: (text) {
                final damage = inspection.floor.damage.copyWith(part: text);
                final floor = inspection.floor.copyWith(damage: damage);
                controller.updateFloor(floor);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.floor.damage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 著しい沈み',
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
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.floor.sinking.part,
              onChange: (text) {
                final sinking = inspection.floor.sinking.copyWith(part: text);
                final floor = inspection.floor.copyWith(sinking: sinking);
                controller.updateFloor(floor);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.floor.sinking.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 6/1000以上の傾斜',
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
            title: '　当該部分の傾斜',
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
            title: '　最も傾きがある場所',
            child: PrimaryTextField(
              initialText: inspection.floor.inclination.part,
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
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.floor.inclination.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
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
            initialText: inspection.floor.remarks,
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
