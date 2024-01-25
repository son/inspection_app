import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/detail/detail.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

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
      children: [
        SectionItem(
          title: '調査区分',
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
