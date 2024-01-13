import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/piping/piping.dart';
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

class PipingSection extends HookConsumerWidget {
  const PipingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '設備配管',
      actions: [
        MenuButton(
          title: '「設備配管」の項目全てを一括で設定します',
          notApplicable: inspection.piping.notApplicable,
          onTapAllPassed: () {
            controller.updatePiping(inspection.piping.allPassed());
          },
          onTapNotApplicable: () {
            controller.updatePiping(const Piping(notApplicable: true));
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          title: '[給水・給湯管] 発錆による赤水',
          child: DropdownField.result(
            result: inspection.piping.supplyRustyWater.result,
            onSelect: (result) {
              final supplyRustyWater =
                  inspection.piping.supplyRustyWater.copyWith(result: result);
              final piping = inspection.piping
                  .copyWith(supplyRustyWater: supplyRustyWater);
              controller.updatePiping(piping);
            },
          ),
        ),
        if (inspection.piping.supplyRustyWater.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.piping.supplyRustyWater.part ?? '',
              onChange: (text) {
                final supplyRustyWater =
                    inspection.piping.supplyRustyWater.copyWith(part: text);
                final piping = inspection.piping
                    .copyWith(supplyRustyWater: supplyRustyWater);
                controller.updatePiping(piping);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.piping.supplyRustyWater.photos,
              onChange: (photos) {
                final piping = inspection.piping.copyWith(
                  supplyRustyWater: inspection.piping.supplyRustyWater.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updatePiping(piping);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final piping = inspection.piping.copyWith(
                  supplyRustyWater: inspection.piping.supplyRustyWater.copyWith(
                    photos: [
                      ...inspection.piping.supplyRustyWater.photos,
                      ...news
                    ],
                  ),
                );
                controller.updatePiping(piping);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[排水管] 排水の滞留',
          child: DropdownField.result(
            result: inspection.piping.sewerStuck.result,
            onSelect: (result) {
              final sewerStuck =
                  inspection.piping.sewerStuck.copyWith(result: result);
              final piping = inspection.piping.copyWith(sewerStuck: sewerStuck);
              controller.updatePiping(piping);
            },
          ),
        ),
        if (inspection.piping.sewerStuck.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.piping.sewerStuck.part ?? '',
              onChange: (text) {
                final sewerStuck =
                    inspection.piping.sewerStuck.copyWith(part: text);
                final piping =
                    inspection.piping.copyWith(sewerStuck: sewerStuck);
                controller.updatePiping(piping);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.piping.sewerStuck.photos,
              onChange: (photos) {
                final piping = inspection.piping.copyWith(
                  sewerStuck: inspection.piping.sewerStuck.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updatePiping(piping);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final piping = inspection.piping.copyWith(
                  sewerStuck: inspection.piping.sewerStuck.copyWith(
                    photos: [...inspection.piping.sewerStuck.photos, ...news],
                  ),
                );
                controller.updatePiping(piping);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[排水管] 漏水',
          child: DropdownField.result(
            result: inspection.piping.sewerWaterLeak.result,
            onSelect: (result) {
              final sewerWaterLeak =
                  inspection.piping.sewerWaterLeak.copyWith(result: result);
              final piping =
                  inspection.piping.copyWith(sewerWaterLeak: sewerWaterLeak);
              controller.updatePiping(piping);
            },
          ),
        ),
        if (inspection.piping.sewerWaterLeak.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.piping.sewerWaterLeak.part ?? '',
              onChange: (text) {
                final sewerWaterLeak =
                    inspection.piping.sewerWaterLeak.copyWith(part: text);
                final piping =
                    inspection.piping.copyWith(sewerWaterLeak: sewerWaterLeak);
                controller.updatePiping(piping);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.piping.sewerWaterLeak.photos,
              onChange: (photos) {
                final piping = inspection.piping.copyWith(
                  sewerWaterLeak: inspection.piping.sewerWaterLeak.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updatePiping(piping);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final piping = inspection.piping.copyWith(
                  sewerWaterLeak: inspection.piping.sewerWaterLeak.copyWith(
                    photos: [
                      ...inspection.piping.sewerWaterLeak.photos,
                      ...news
                    ],
                  ),
                );
                controller.updatePiping(piping);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[排水管] 換気ダクトの脱落',
          child: DropdownField.result(
            result: inspection.piping.ductLoss.result,
            onSelect: (result) {
              final ductLoss =
                  inspection.piping.ductLoss.copyWith(result: result);
              final piping = inspection.piping.copyWith(ductLoss: ductLoss);
              controller.updatePiping(piping);
            },
          ),
        ),
        if (inspection.piping.ductLoss.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '　問題が確認された場所',
            child: PrimaryTextField(
              initialText: inspection.piping.ductLoss.part ?? '',
              onChange: (text) {
                final ductLoss =
                    inspection.piping.ductLoss.copyWith(part: text);
                final piping = inspection.piping.copyWith(ductLoss: ductLoss);
                controller.updatePiping(piping);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.piping.ductLoss.photos,
              onChange: (photos) {
                final piping = inspection.piping.copyWith(
                  ductLoss: inspection.piping.ductLoss.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updatePiping(piping);
              },
              onTapAdd: () async {
                final paths = await ImageSourceSheet.show(context);
                if (paths.isEmpty) return;
                final news = await controller.createNewPhotos(paths);
                final piping = inspection.piping.copyWith(
                  ductLoss: inspection.piping.ductLoss.copyWith(
                    photos: [...inspection.piping.ductLoss.photos, ...news],
                  ),
                );
                controller.updatePiping(piping);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.piping.coverage,
              name: inspection.piping.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final piping = inspection.piping.copyWith(coverage: coverage);
              controller.updatePiping(piping);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.piping.remarks ?? '',
            onChange: (text) {
              final piping = inspection.piping.copyWith(remarks: text);
              controller.updatePiping(piping);
            },
          ),
        ),
      ],
    );
  }
}
