import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class RepairingSection extends HookConsumerWidget {
  const RepairingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '修理履歴・リフォーム工事の有無',
      children: [
        SectionItem(
          title: '修理履歴',
          child: DropdownField<bool>(
            value: () {
              if (inspection.overview.building.repairing.repaired == null) {
                return null;
              }
              return SelectionItem(
                value: inspection.overview.building.repairing.repaired!,
                name: inspection.overview.building.repairing.repaired!
                    ? 'あり'
                    : 'なし',
              );
            }(),
            all: [true, false]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? 'あり' : 'なし',
                    ))
                .toList(),
            onSelect: (repaired) {
              controller.updateRepairing(inspection.overview.building.repairing
                  .copyWith(repaired: repaired));
            },
          ),
        ),
        if (inspection.overview.building.repairing.repaired ?? false) ...[
          SectionItem(
            axis: Axis.vertical,
            title: '部分',
            child: PrimaryTextField(
              textAlign: TextAlign.start,
              maxLines: 100,
              initialText: inspection.overview.building.repairing.parts,
              onChange: (text) {
                controller.updateRepairing(inspection
                    .overview.building.repairing
                    .copyWith(parts: text));
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            title: '修繕方法',
            child: PrimaryTextField(
              textAlign: TextAlign.start,
              maxLines: 100,
              initialText: inspection.overview.building.repairing.method,
              onChange: (text) {
                controller.updateRepairing(inspection
                    .overview.building.repairing
                    .copyWith(method: text));
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査時のリフォーム工事',
          child: DropdownField<bool>(
            value: () {
              if (inspection.overview.building.renovation.renovating == null) {
                return null;
              }
              return SelectionItem(
                value: inspection.overview.building.renovation.renovating!,
                name: inspection.overview.building.renovation.renovating!
                    ? '工事中'
                    : '工事中ではない',
              );
            }(),
            all: [true, false]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? '工事中' : '工事中ではない',
                    ))
                .toList(),
            onSelect: (renovating) {
              controller.updateRenovation(inspection
                  .overview.building.renovation
                  .copyWith(renovating: renovating));
            },
          ),
        ),
        if (inspection.overview.building.renovation.renovating ?? false)
          SectionItem(
            axis: Axis.vertical,
            title: '部分',
            child: PrimaryTextField(
              textAlign: TextAlign.start,
              maxLines: 100,
              initialText: inspection.overview.building.renovation.parts,
              onChange: (text) {
                final renovation = inspection.overview.building.renovation
                    .copyWith(parts: text);
                controller.updateRenovation(renovation);
              },
            ),
          ),
      ],
    );
  }
}
