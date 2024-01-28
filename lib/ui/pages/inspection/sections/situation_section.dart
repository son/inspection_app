import 'package:flutter/cupertino.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/entities/situation/situation.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/data/utils/date_utils.dart';
import 'package:inspection_app/ui/components/menu_field.dart';
import 'package:inspection_app/ui/components/primary_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/components/text_styles.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class SituationSection extends HookConsumerWidget {
  const SituationSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '調査時の状況',
      complete: inspection.situation.complete,
      children: [
        SectionItem(
          title: '天候',
          incomplete: inspection.situation.weather == null,
          child: MenuField<Weather>(
            value: SelectionItem.orNull(
              value: inspection.situation.weather,
              name: inspection.situation.weather?.name,
            ),
            all: Weather.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.name,
                    ))
                .toList(),
            onSelect: (weather) {
              controller.updateSituation(
                  inspection.situation.copyWith(weather: weather));
            },
          ),
        ),
        SectionItem(
          title: '報告書作成日',
          incomplete: inspection.situation.createdAt == null,
          child: PrimaryField(
            text: inspection.situation.createdAt?.ymd() ?? '',
            onTap: () async {
              final date = await DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                maxTime: DateTime.now(),
                currentTime: DateTime.now(),
                locale: LocaleType.jp,
              );
              if (date == null) return;
              controller.updateSituation(
                inspection.situation.copyWith(createdAt: date),
              );
            },
          ),
        ),
        SectionItem(
          title: '調査日',
          incomplete: inspection.situation.schedule.startedAt == null,
          child: PrimaryField(
            text: inspection.situation.schedule.startedAt?.ymd() ?? '',
            onTap: () async {
              final date = await DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                maxTime: DateTime.now(),
                currentTime: DateTime.now(),
                locale: LocaleType.jp,
              );
              if (date == null) return;
              controller.updateSituation(
                inspection.situation.copyWith(
                  schedule:
                      inspection.situation.schedule.copyWith(startedAt: date),
                ),
              );
            },
          ),
        ),
        SectionItem(
          title: '調査時間',
          incomplete: inspection.situation.schedule.startedAt == null ||
              inspection.situation.schedule.endedAt == null,
          child: Row(
            children: [
              Expanded(
                child: PrimaryField(
                  text: inspection.situation.schedule.startedAt?.hm() ?? '',
                  onTap: () async {
                    final date = await DatePicker.showTimePicker(
                      context,
                      showTitleActions: true,
                      showSecondsColumn: false,
                      currentTime: DateTime.now(),
                      locale: LocaleType.jp,
                    );
                    if (date == null) return;
                    controller.updateSituation(
                      inspection.situation.copyWith(
                        schedule: inspection.situation.schedule
                            .copyWith(startedAt: date),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Text(
                '〜',
                style: TextStyles.n14,
              ),
              SizedBox(
                width: 80,
                child: PrimaryField(
                  text: inspection.situation.schedule.endedAt?.hm() ?? '',
                  onTap: () async {
                    final date = await DatePicker.showTimePicker(
                      context,
                      showSecondsColumn: false,
                      showTitleActions: true,
                      currentTime: DateTime.now(),
                      locale: LocaleType.jp,
                    );
                    if (date == null) return;
                    controller.updateSituation(
                      inspection.situation.copyWith(
                        schedule: inspection.situation.schedule
                            .copyWith(endedAt: date),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SectionItem(
          title: '電気',
          incomplete: inspection.situation.lifeline.electricity == null,
          child: MenuField<bool>(
            value: () {
              if (inspection.situation.lifeline.electricity == null) {
                return null;
              }
              return SelectionItem(
                value: inspection.situation.lifeline.electricity!,
                name: inspection.situation.lifeline.electricity!
                    ? '通電あり'
                    : '通電なし',
              );
            }(),
            all: [false, true]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? '通電あり' : '通電なし',
                    ))
                .toList(),
            onSelect: (isOn) {
              controller.updateSituation(inspection.situation.copyWith(
                lifeline:
                    inspection.situation.lifeline.copyWith(electricity: isOn),
              ));
            },
          ),
        ),
        SectionItem(
          title: '水道',
          incomplete: inspection.situation.lifeline.water == null,
          child: MenuField<bool>(
            value: () {
              if (inspection.situation.lifeline.water == null) return null;
              return SelectionItem(
                value: inspection.situation.lifeline.water!,
                name: inspection.situation.lifeline.water! ? '開栓あり' : '開栓なし',
              );
            }(),
            all: [false, true]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? '開栓あり' : '開栓なし',
                    ))
                .toList(),
            onSelect: (isOn) {
              controller.updateSituation(inspection.situation.copyWith(
                lifeline: inspection.situation.lifeline.copyWith(water: isOn),
              ));
            },
          ),
        ),
        SectionItem(
          title: 'ガス',
          incomplete: inspection.situation.lifeline.gas == null,
          child: MenuField<bool>(
            value: () {
              if (inspection.situation.lifeline.gas == null) return null;
              return SelectionItem(
                value: inspection.situation.lifeline.gas!,
                name: inspection.situation.lifeline.gas! ? '開栓あり' : '開栓なし',
              );
            }(),
            all: [false, true]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? '開栓あり' : '開栓なし',
                    ))
                .toList(),
            onSelect: (isOn) {
              controller.updateSituation(inspection.situation.copyWith(
                lifeline: inspection.situation.lifeline.copyWith(gas: isOn),
              ));
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '調査所見',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.situation.findings ?? '',
            onChange: (text) {
              controller.updateSituation(
                inspection.situation.copyWith(findings: text),
              );
            },
          ),
        ),
      ],
    );
  }
}
