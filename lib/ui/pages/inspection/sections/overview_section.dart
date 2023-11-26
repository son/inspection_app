import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class OverviewSection extends HookConsumerWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);
    final controller = ref.read(inspectionProvider.notifier);

    return Section(
      title: '調査物件情報',
      children: [
        SectionItem(
          title: '物件番号',
          child: PrimaryTextField(
            hintText: '入力すると報告書の全ページ左上に表示されます',
            initialText: inspection.udId ?? '',
            onChange: (text) {
              controller.updateUdId(text);
            },
          ),
        ),
        SectionItem(
          title: '建物名称',
          child: PrimaryTextField(
            hintText: '建物名称',
            fixedText: '様邸',
            initialText: inspection.overview.building.name,
            onChange: (text) {
              final building =
                  inspection.overview.building.copyWith(name: text);
              final overview = inspection.overview.copyWith(building: building);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '調査依頼主',
          child: PrimaryTextField(
            hintText: '会社名・担当者名',
            initialText: inspection.overview.clientName,
            onChange: (text) {
              final overview = inspection.overview.copyWith(clientName: text);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '調査立合者',
          child: PrimaryTextField(
            initialText: inspection.overview.witnessName,
            hintText: '会社名・担当者名',
            onChange: (text) {
              final overview = inspection.overview.copyWith(witnessName: text);
              controller.updateOverview(overview);
            },
          ),
        ),
      ],
    );
  }
}
