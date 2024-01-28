import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class InspectorSection extends HookConsumerWidget {
  const InspectorSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: 'インスペクター情報',
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
      ],
    );
  }
}
