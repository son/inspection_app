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
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class BaseAndFloorFramingSection extends HookConsumerWidget {
  const BaseAndFloorFramingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '土台、床組',
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
          title: '[構造] 柱の著しいひび割れ\n劣化、欠損',
          child: DropdownField.result(
            result: inspection.baseAndFloorFraming.damage.result,
            onSelect: (result) {
              final damage = inspection.baseAndFloorFraming.damage
                  .copyWith(result: result);
              final baseAndFloorFraming =
                  inspection.baseAndFloorFraming.copyWith(damage: damage);
              controller.updateBaseAndFloorFraming(baseAndFloorFraming);
            },
          ),
        ),
        if (inspection.baseAndFloorFraming.damage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　最大ひび割れ幅',
            child: PrimaryTextField(
              initialText:
                  inspection.baseAndFloorFraming.damage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final damage =
                    inspection.baseAndFloorFraming.damage.copyWith(max: max);
                final baseAndFloorFraming =
                    inspection.baseAndFloorFraming.copyWith(damage: damage);
                controller.updateBaseAndFloorFraming(baseAndFloorFraming);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.baseAndFloorFraming.damage.part,
              onChange: (text) {
                final damage =
                    inspection.baseAndFloorFraming.damage.copyWith(part: text);
                final baseAndFloorFraming =
                    inspection.baseAndFloorFraming.copyWith(damage: damage);
                controller.updateBaseAndFloorFraming(baseAndFloorFraming);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '　写真',
            child: PhotoCaptionsItem(
              photos: inspection.baseAndFloorFraming.damage.photos,
              onChange: (photos) {},
              onTapAdd: () {},
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.baseAndFloorFraming.coverage,
              name: inspection.baseAndFloorFraming.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final baseAndFloorFraming =
                  inspection.baseAndFloorFraming.copyWith(coverage: coverage);
              controller.updateBaseAndFloorFraming(baseAndFloorFraming);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.baseAndFloorFraming.remarks,
            onChange: (text) {
              final baseAndFloorFraming =
                  inspection.baseAndFloorFraming.copyWith(remarks: text);
              controller.updateBaseAndFloorFraming(baseAndFloorFraming);
            },
          ),
        ),
      ],
    );
  }
}
