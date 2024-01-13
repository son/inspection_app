import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/corrosion/corrosion.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/image_source_sheet.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class CorrosionSection extends HookConsumerWidget {
  const CorrosionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '腐朽、腐食など',
      actions: [
        MenuButton(
          title: '「腐朽、腐食など」の項目全てを一括で設定します',
          notApplicable: inspection.corrosion.notApplicable,
          onTapAllPassed: () {
            controller.updateCorrosion(inspection.corrosion.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateCorrosion(const Corrosion(notApplicable: true));
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          title: '[構造] 著しい腐朽、腐食など',
          child: DropdownField.result(
            result: inspection.corrosion.corrosion.result,
            onSelect: (result) {
              final corrosion =
                  inspection.corrosion.corrosion.copyWith(result: result);
              final c = inspection.corrosion.copyWith(corrosion: corrosion);
              controller.updateCorrosion(c);
            },
          ),
        ),
        if (inspection.corrosion.corrosion.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.corrosion.corrosion.part ?? '',
              onChange: (text) {
                final corrosion =
                    inspection.corrosion.corrosion.copyWith(part: text);
                final c = inspection.corrosion.copyWith(corrosion: corrosion);
                controller.updateCorrosion(c);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.corrosion.corrosion.photos,
              onChange: (photos) {
                final corrosion = inspection.corrosion.copyWith(
                  corrosion: inspection.corrosion.corrosion.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateCorrosion(corrosion);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final corrosion = inspection.corrosion.copyWith(
                  corrosion: inspection.corrosion.corrosion.copyWith(
                    photos: [...inspection.corrosion.corrosion.photos, ...news],
                  ),
                );
                controller.updateCorrosion(corrosion);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.corrosion.coverage,
              name: inspection.corrosion.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final corrosion =
                  inspection.corrosion.copyWith(coverage: coverage);
              controller.updateCorrosion(corrosion);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.corrosion.remarks ?? '',
            onChange: (text) {
              final corrosion = inspection.corrosion.copyWith(remarks: text);
              controller.updateCorrosion(corrosion);
            },
          ),
        ),
      ],
    );
  }
}
