import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class OverviewSection extends HookConsumerWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '調査物件情報',
      complete: inspection.overview.complete,
      children: [
        SectionItem(
          incomplete: inspection.udId?.isEmpty ?? true,
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
          incomplete: inspection.overview.buildingName?.isEmpty ?? true,
          child: PrimaryTextField(
            hintText: '建物名称',
            fixedText: '様邸',
            initialText: inspection.overview.buildingName ?? '',
            onChange: (text) {
              final overview = inspection.overview.copyWith(buildingName: text);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '調査依頼主',
          incomplete: inspection.overview.clientName?.isEmpty ?? true,
          child: PrimaryTextField(
            hintText: '会社名・担当者名',
            initialText: inspection.overview.clientName ?? '',
            onChange: (text) {
              final overview = inspection.overview.copyWith(clientName: text);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '調査立合者',
          incomplete: inspection.overview.witnessName?.isEmpty ?? true,
          child: PrimaryTextField(
            initialText: inspection.overview.witnessName ?? '',
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
