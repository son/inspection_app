import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/building/building.dart';
import 'package:inspection_app/data/entities/inspection/inspection_overview.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';

import '../children/section_item.dart';

class DetailSection extends HookConsumerWidget {
  const DetailSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);
    final controller = ref.read(inspectionProvider.notifier);

    return Section(
      title: '物件詳細',
      children: [
        SectionItem(
          title: '調査区分',
          child: DropdownField<HousingType>(
            value: SelectionItem.orNull(
              value: inspection.overview.housingType,
              name: inspection.overview.housingType?.name,
            ),
            all: HousingType.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.name,
                    ))
                .toList(),
            onSelect: (type) {
              controller.updateHousingType(type);
            },
          ),
        ),
        SectionItem(
          title: '構造種別',
          child: DropdownField<StructureType>(
            value: SelectionItem.orNull(
              value: inspection.overview.building.structureType,
              name: inspection.overview.building.structureType?.name,
            ),
            all: StructureType.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.name,
                    ))
                .toList(),
            onSelect: (type) {
              controller.updateStructureType(type);
            },
          ),
        ),
        SectionItem(
          title: '延床面積',
          child: PrimaryTextField(
            initialText:
                inspection.overview.building.totalFloorArea?.toString() ?? '',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: const TextInputType.numberWithOptions(
              decimal: true,
            ),
            fixedText: '㎡',
            onChange: (text) {
              final totalFloorArea = double.tryParse(text);
              if (totalFloorArea == null) return;
              final building = inspection.overview.building
                  .copyWith(totalFloorArea: totalFloorArea);
              final overview = inspection.overview.copyWith(building: building);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '階数',
          child: Row(
            children: [
              const Spacer(),
              SizedBox(
                width: 100,
                child: PrimaryTextField(
                  initialText:
                      inspection.overview.building.floor.ground?.toString() ??
                          '',
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
                    controller.updateGround(ground);
                  },
                ),
              ),
              const SizedBox(width: 32),
              SizedBox(
                width: 100,
                child: PrimaryTextField(
                  initialText: inspection.overview.building.floor.underground
                          ?.toString() ??
                      '',
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
                    controller.updateUnderGround(underground);
                  },
                ),
              ),
            ],
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '調査所見',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            initialText: inspection.overview.building.findings,
            maxLines: 100,
            onChange: (text) {
              final building =
                  inspection.overview.building.copyWith(findings: text);
              final overview = inspection.overview.copyWith(building: building);
              controller.updateOverview(overview);
            },
          ),
        ),
        // TODO: 建築時期
        // SectionItem(
        //   title: '建築時期',
        //   child: Row(
        //     children: [
        //       const Spacer(),
        //       SizedBox(
        //         width: 100,
        //         child: DropdownField<int>(
        //           rightText: '年',
        //           value: SelectionItem(
        //             value: inspection.overview.building.floor.ground,
        //             name:
        //                 '${inspection.overview.building.floor.ground} 階',
        //           ),
        //           all: List.generate(63, (index) => index + 1)
        //               .map((value) => SelectionItem(
        //                     value: value,
        //                     name: '$value 階',
        //                   ))
        //               .toList(),
        //           onSelect: (value) {
        //             ref
        //                 .read(inspectionProvider.notifier)
        //                 .updateGround(value);
        //           },
        //         ),
        //       ),
        //       SizedBox(
        //         width: 100,
        //         child: DropdownField<int>(
        //           value: SelectionItem(
        //             value:
        //                 inspection.overview.building.floor.underground,
        //             name:
        //                 '${inspection.overview.building.floor.underground} 月',
        //           ),
        //           all: List.generate(4, (index) => index)
        //               .map((value) => SelectionItem(
        //                     value: value,
        //                     name: '$value 月',
        //                   ))
        //               .toList(),
        //           onSelect: (value) {
        //             ref
        //                 .read(inspectionProvider.notifier)
        //                 .updateUnderGround(value);
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
