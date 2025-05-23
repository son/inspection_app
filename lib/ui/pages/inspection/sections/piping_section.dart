import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/piping/piping.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/menu_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_menu_button.dart';
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
      complete: inspection.piping.complete,
      actions: [
        SectionMenuButton(
          title: '「設備配管」の項目全てを一括で設定します',
          notApplicable: inspection.piping.notApplicable,
          onTapAllPassed: () {
            controller.updatePiping(inspection.piping.allPassed());
          },
          onTapNotApplicable: () {
            controller.updatePiping(Piping(
              notApplicable: !inspection.piping.notApplicable,
            ));
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          title: '[給水・給湯管] 発錆による赤水',
          strikeThrough: inspection.piping.notApplicable,
          incomplete: inspection.piping.supplyRustyWater.result == Result.none,
          child: MenuField.result(
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
            title: '問題が確認された場所',
            incomplete:
                inspection.piping.supplyRustyWater.part?.isEmpty ?? true,
            indent: true,
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
              onTapAdd: (paths) async {
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
              onTapDelete: (photo) async {
                final news = inspection.piping.supplyRustyWater.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final piping = inspection.piping.copyWith(
                  supplyRustyWater: inspection.piping.supplyRustyWater.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updatePiping(piping);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[給水・給湯管] 漏水',
          strikeThrough: inspection.piping.notApplicable,
          incomplete: inspection.piping.supplyWaterLeak.result == Result.none,
          child: MenuField.result(
            result: inspection.piping.supplyWaterLeak.result,
            onSelect: (result) {
              final supplyWaterLeak =
                  inspection.piping.supplyWaterLeak.copyWith(result: result);
              final piping =
                  inspection.piping.copyWith(supplyWaterLeak: supplyWaterLeak);
              controller.updatePiping(piping);
            },
          ),
        ),
        if (inspection.piping.supplyWaterLeak.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            incomplete: inspection.piping.supplyWaterLeak.part?.isEmpty ?? true,
            indent: true,
            child: PrimaryTextField(
              initialText: inspection.piping.supplyWaterLeak.part ?? '',
              onChange: (text) {
                final supplyWaterLeak =
                    inspection.piping.supplyWaterLeak.copyWith(part: text);
                final piping = inspection.piping
                    .copyWith(supplyWaterLeak: supplyWaterLeak);
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
              onTapAdd: (paths) async {
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
              onTapDelete: (photo) async {
                final news = inspection.piping.supplyRustyWater.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final piping = inspection.piping.copyWith(
                  supplyRustyWater: inspection.piping.supplyRustyWater.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updatePiping(piping);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[排水管] 排水の滞留',
          strikeThrough: inspection.piping.notApplicable,
          incomplete: inspection.piping.sewerStuck.result == Result.none,
          child: MenuField.result(
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
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.piping.sewerStuck.part?.isEmpty ?? true,
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
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final piping = inspection.piping.copyWith(
                  sewerStuck: inspection.piping.sewerStuck.copyWith(
                    photos: [...inspection.piping.sewerStuck.photos, ...news],
                  ),
                );
                controller.updatePiping(piping);
              },
              onTapDelete: (photo) async {
                final news = inspection.piping.sewerStuck.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final piping = inspection.piping.copyWith(
                  sewerStuck: inspection.piping.sewerStuck.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updatePiping(piping);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[排水管] 漏水',
          strikeThrough: inspection.piping.notApplicable,
          incomplete: inspection.piping.sewerWaterLeak.result == Result.none,
          child: MenuField.result(
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
            title: '問題が確認された場所',
            indent: true,
            incomplete: inspection.piping.sewerWaterLeak.part?.isEmpty ?? true,
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
              onTapAdd: (paths) async {
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
              onTapDelete: (photo) async {
                final news = inspection.piping.sewerWaterLeak.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final piping = inspection.piping.copyWith(
                  sewerWaterLeak: inspection.piping.sewerWaterLeak.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updatePiping(piping);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          title: '[換気ダクト] 換気ダクトの脱落',
          strikeThrough: inspection.piping.notApplicable,
          incomplete: inspection.piping.ductLoss.result == Result.none,
          child: MenuField.result(
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
            title: '問題が確認された場所',
            incomplete: inspection.piping.ductLoss.part?.isEmpty ?? true,
            indent: true,
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
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final piping = inspection.piping.copyWith(
                  ductLoss: inspection.piping.ductLoss.copyWith(
                    photos: [...inspection.piping.ductLoss.photos, ...news],
                  ),
                );
                controller.updatePiping(piping);
              },
              onTapDelete: (photo) async {
                final news = inspection.piping.ductLoss.photos
                    .whereNot((p) => p.image == photo.image)
                    .toList();
                final piping = inspection.piping.copyWith(
                  ductLoss: inspection.piping.ductLoss.copyWith(
                    photos: [...news],
                  ),
                );
                controller.updatePiping(piping);
                await controller.deletePhoto(photo);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          strikeThrough: inspection.piping.notApplicable,
          incomplete: inspection.piping.coverage == null,
          child: MenuField<Coverage>(
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
