import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/roof_frame/roof_frame.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class RoofFrameSection extends HookConsumerWidget {
  const RoofFrameSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '小屋組（下屋部分を含む）',
      complete: inspection.roofFrame.complete,
      actions: [
        MenuButton(
          title: '「小屋組（下屋部分を含む）」の項目全てを一括で設定します',
          notApplicable: inspection.roofFrame.notApplicable,
          onTapAllPassed: () {
            controller.updateRoofFrame(inspection.roofFrame.allPassed());
          },
          onTapNotApplicable: () {
            controller.updateRoofFrame(const RoofFrame(notApplicable: true));
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.horizontal,
          incomplete:
              inspection.roofFrame.foundationDamage.result == Result.none,
          title: '[構造] ひび割れ、欠損',
          child: DropdownField.result(
            result: inspection.roofFrame.foundationDamage.result,
            onSelect: (result) {
              final foundationDamage = inspection.roofFrame.foundationDamage
                  .copyWith(result: result);
              final roofFrame = inspection.roofFrame
                  .copyWith(foundationDamage: foundationDamage);
              controller.updateRoofFrame(roofFrame);
            },
          ),
        ),
        if (inspection.roofFrame.foundationDamage.result == Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '最大ひび割れ幅、欠損深さ',
            indent: true,
            incomplete: inspection.roofFrame.foundationDamage.max == null,
            child: PrimaryTextField(
              initialText:
                  inspection.roofFrame.foundationDamage.max?.toString() ?? '',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              fixedText: 'mm',
              onChange: (text) {
                final max = double.tryParse(text);
                if (max == null) return;
                final foundationDamage =
                    inspection.roofFrame.foundationDamage.copyWith(max: max);
                final roofFrame = inspection.roofFrame
                    .copyWith(foundationDamage: foundationDamage);
                controller.updateRoofFrame(roofFrame);
              },
            ),
          ),
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete:
                inspection.roofFrame.foundationDamage.part?.isEmpty ?? true,
            child: PrimaryTextField(
              initialText: inspection.roofFrame.foundationDamage.part ?? '',
              onChange: (text) {
                final foundationDamage =
                    inspection.roofFrame.foundationDamage.copyWith(part: text);
                final roofFrame = inspection.roofFrame
                    .copyWith(foundationDamage: foundationDamage);
                controller.updateRoofFrame(roofFrame);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.roofFrame.foundationDamage.photos,
              onChange: (photos) {
                final roofFrame = inspection.roofFrame.copyWith(
                  foundationDamage:
                      inspection.roofFrame.foundationDamage.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateRoofFrame(roofFrame);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final roofFrame = inspection.roofFrame.copyWith(
                  foundationDamage:
                      inspection.roofFrame.foundationDamage.copyWith(
                    photos: [
                      ...inspection.roofFrame.foundationDamage.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateRoofFrame(roofFrame);
              },
            ),
          ),
        ],
        SectionItem(
          axis: Axis.horizontal,
          incomplete:
              inspection.roofFrame.rainRoofFrameLeak.result == Result.none,
          title: '[雨水] 小屋組の雨漏りの跡',
          child: DropdownField.result(
            result: inspection.roofFrame.rainRoofFrameLeak.result,
            onSelect: (result) {
              final rainRoofFrameLeak = inspection.roofFrame.rainRoofFrameLeak
                  .copyWith(result: result);
              final roofFrame = inspection.roofFrame
                  .copyWith(rainRoofFrameLeak: rainRoofFrameLeak);
              controller.updateRoofFrame(roofFrame);
            },
          ),
        ),
        if (inspection.roofFrame.rainRoofFrameLeak.result ==
            Result.failure) ...[
          SectionItem(
            axis: Axis.horizontal,
            title: '問題が確認された場所',
            indent: true,
            incomplete:
                inspection.roofFrame.rainRoofFrameLeak.part?.isEmpty ?? true,
            child: PrimaryTextField(
              initialText: inspection.roofFrame.rainRoofFrameLeak.part ?? '',
              onChange: (text) {
                final rainRoofFrameLeak =
                    inspection.roofFrame.rainRoofFrameLeak.copyWith(part: text);
                final roofFrame = inspection.roofFrame
                    .copyWith(rainRoofFrameLeak: rainRoofFrameLeak);
                controller.updateRoofFrame(roofFrame);
              },
            ),
          ),
          SectionItem(
            axis: Axis.vertical,
            child: PhotoCaptionsItem(
              photos: inspection.roofFrame.rainRoofFrameLeak.photos,
              onChange: (photos) {
                final roofFrame = inspection.roofFrame.copyWith(
                  rainRoofFrameLeak:
                      inspection.roofFrame.rainRoofFrameLeak.copyWith(
                    photos: [...photos],
                  ),
                );
                controller.updateRoofFrame(roofFrame);
              },
              onTapAdd: (paths) async {
                final news = await controller.createNewPhotos(paths);
                final roofFrame = inspection.roofFrame.copyWith(
                  rainRoofFrameLeak:
                      inspection.roofFrame.rainRoofFrameLeak.copyWith(
                    photos: [
                      ...inspection.roofFrame.rainRoofFrameLeak.photos,
                      ...news
                    ],
                  ),
                );
                controller.updateRoofFrame(roofFrame);
              },
            ),
          ),
        ],
        SectionItem(
          title: '調査できた範囲',
          incomplete: inspection.roofFrame.coverage == null,
          child: DropdownField<Coverage>(
            value: SelectionItem.orNull(
              value: inspection.roofFrame.coverage,
              name: inspection.roofFrame.coverage?.label,
            ),
            all: Coverage.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (coverage) {
              final roofFrame =
                  inspection.roofFrame.copyWith(coverage: coverage);
              controller.updateRoofFrame(roofFrame);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            initialText: inspection.roofFrame.remarks ?? '',
            maxLines: 100,
            onChange: (text) {
              final roofFrame = inspection.roofFrame.copyWith(remarks: text);
              controller.updateRoofFrame(roofFrame);
            },
          ),
        ),
      ],
    );
  }
}
