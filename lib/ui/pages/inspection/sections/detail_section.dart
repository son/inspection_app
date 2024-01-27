import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/detail/detail.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';
import 'package:inspection_app/data/utils/date_utils.dart';

import '../children/section_item.dart';

class DetailSection extends HookConsumerWidget {
  const DetailSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '物件詳細',
      complete: inspection.detail.complete,
      children: [
        SectionItem(
          title: '調査区分',
          incomplete: inspection.detail.housingType == null,
          child: DropdownField<HousingType>(
            value: SelectionItem.orNull(
              value: inspection.detail.housingType,
              name: inspection.detail.housingType?.name,
            ),
            all: HousingType.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.name,
                    ))
                .toList(),
            onSelect: (type) {
              controller.updateDetail(
                inspection.detail.copyWith(housingType: type),
              );
            },
          ),
        ),
        SectionItem(
          title: '構造種別',
          incomplete: inspection.detail.structureType == null,
          child: DropdownField<StructureType>(
            value: SelectionItem.orNull(
              value: inspection.detail.structureType,
              name: inspection.detail.structureType?.name,
            ),
            all: StructureType.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.name,
                    ))
                .toList(),
            onSelect: (type) {
              controller.updateDetail(
                inspection.detail.copyWith(structureType: type),
              );
            },
          ),
        ),
        SectionItem(
          title: '延床面積',
          incomplete: inspection.detail.totalFloorArea == null,
          child: PrimaryTextField(
            initialText: inspection.detail.totalFloorArea?.toString() ?? '',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: const TextInputType.numberWithOptions(
              decimal: true,
            ),
            fixedText: '㎡',
            onChange: (text) {
              final totalFloorArea = double.tryParse(text);
              if (totalFloorArea == null) return;
              controller.updateDetail(
                inspection.detail.copyWith(totalFloorArea: totalFloorArea),
              );
            },
          ),
        ),
        SectionItem(
          title: '階数',
          incomplete: inspection.detail.floor.ground == null ||
              inspection.detail.floor.underground == null,
          child: Row(
            children: [
              const Spacer(),
              SizedBox(
                width: 100,
                child: PrimaryTextField(
                  initialText: inspection.detail.floor.ground?.toString() ?? '',
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  leftText: '地上',
                  hintText: 'x',
                  fixedText: '階',
                  onChange: (text) {
                    final ground = int.tryParse(text);
                    if (ground == null) return;
                    controller.updateDetail(
                      inspection.detail.copyWith(
                        floor: inspection.detail.floor.copyWith(ground: ground),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 32),
              SizedBox(
                width: 100,
                child: PrimaryTextField(
                  initialText:
                      inspection.detail.floor.underground?.toString() ?? '',
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  hintText: 'x',
                  leftText: '地下',
                  fixedText: '階',
                  onChange: (text) {
                    final underground = int.tryParse(text);
                    if (underground == null) return;
                    controller.updateDetail(inspection.detail.copyWith(
                        floor: inspection.detail.floor.copyWith(
                      underground: underground,
                    )));
                  },
                ),
              ),
            ],
          ),
        ),
        SectionItem(
          title: '建築時期',
          incomplete: inspection.detail.builtAt == null,
          child: PrimaryField(
            text: inspection.detail.builtAt?.ymd() ?? '',
            onTap: () async {
              final date = await DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                maxTime: DateTime.now(),
                currentTime: DateTime.now(),
                locale: LocaleType.jp,
              );
              if (date == null) return;
              controller.updateDetail(
                inspection.detail.copyWith(builtAt: date),
              );
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '調査所見',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            initialText: inspection.detail.findings ?? '',
            maxLines: 100,
            onChange: (text) {
              controller.updateDetail(
                inspection.detail.copyWith(findings: text),
              );
            },
          ),
        ),
      ],
    );
  }
}
