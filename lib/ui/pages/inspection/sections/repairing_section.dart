import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/menu_field.dart';
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
      complete: inspection.repairing.complete && inspection.renovation.complete,
      children: [
        SectionItem(
          title: '修理履歴',
          incomplete: inspection.repairing.repaired == null,
          child: MenuField<bool>(
            value: () {
              if (inspection.repairing.repaired == null) {
                return null;
              }
              return SelectionItem(
                value: inspection.repairing.repaired!,
                name: inspection.repairing.repaired! ? 'あり' : 'なし',
              );
            }(),
            all: [true, false]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? 'あり' : 'なし',
                    ))
                .toList(),
            onSelect: (repaired) {
              controller.updateRepairing(
                  inspection.repairing.copyWith(repaired: repaired));
            },
          ),
        ),
        if (inspection.repairing.repaired ?? false) ...[
          SectionItem(
            incomplete: inspection.repairing.parts?.isEmpty ?? true,
            axis: Axis.vertical,
            title: '部分',
            child: PrimaryTextField(
              textAlign: TextAlign.start,
              maxLines: 100,
              initialText: inspection.repairing.parts ?? '',
              onChange: (text) {
                controller.updateRepairing(
                    inspection.repairing.copyWith(parts: text));
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            incomplete: inspection.repairing.method?.isEmpty ?? true,
            title: '修繕方法',
            child: PrimaryTextField(
              textAlign: TextAlign.start,
              maxLines: 100,
              initialText: inspection.repairing.method ?? '',
              onChange: (text) {
                controller.updateRepairing(
                    inspection.repairing.copyWith(method: text));
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査時のリフォーム工事',
          incomplete: inspection.renovation.renovating == null,
          child: MenuField<bool>(
            value: () {
              if (inspection.renovation.renovating == null) {
                return null;
              }
              return SelectionItem(
                value: inspection.renovation.renovating!,
                name: inspection.renovation.renovating! ? '工事中' : '工事中ではない',
              );
            }(),
            all: [true, false]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? '工事中' : '工事中ではない',
                    ))
                .toList(),
            onSelect: (renovating) {
              controller.updateRenovation(
                  inspection.renovation.copyWith(renovating: renovating));
            },
          ),
        ),
        if (inspection.renovation.renovating ?? false)
          SectionItem(
            axis: Axis.vertical,
            title: '部分',
            incomplete: inspection.renovation.parts?.isEmpty ?? true,
            child: PrimaryTextField(
              textAlign: TextAlign.start,
              maxLines: 100,
              initialText: inspection.renovation.parts ?? '',
              onChange: (text) {
                final renovation = inspection.renovation.copyWith(parts: text);
                controller.updateRenovation(renovation);
              },
            ),
          ),
      ],
    );
  }
}
