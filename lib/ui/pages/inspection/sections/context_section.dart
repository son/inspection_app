import 'package:flutter/cupertino.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/inspection/inspection_overview.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/data/utils/date_utils.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/components/text_styles.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class ContextSection extends HookConsumerWidget {
  const ContextSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '調査時の状況',
      children: [
        SectionItem(
          title: '天候',
          child: DropdownField<Weather>(
            value: SelectionItem.orNull(
              value: inspection.overview.weather,
              name: inspection.overview.weather?.name,
            ),
            all: Weather.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.name,
                    ))
                .toList(),
            onSelect: (weather) {
              controller.updateWeather(weather);
            },
          ),
        ),
        SectionItem(
          title: '報告書作成日',
          child: PrimaryField(
            text: inspection.inspectionCreatedAt?.ymd() ?? '',
            onTap: () async {
              final date = await DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                maxTime: DateTime.now(),
                currentTime: DateTime.now(),
                locale: LocaleType.jp,
              );
              if (date == null) return;
              controller.updateInspectionCreatedAt(date);
            },
          ),
        ),
        SectionItem(
          title: '調査日',
          child: PrimaryField(
            text: inspection.overview.schedule.startedAt?.ymd() ?? '',
            onTap: () async {
              final date = await DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                maxTime: DateTime.now(),
                currentTime: DateTime.now(),
                locale: LocaleType.jp,
              );
              if (date == null) return;
              controller.updateSchedule(
                  inspection.overview.schedule.copyWith(startedAt: date));
            },
          ),
        ),
        SectionItem(
          title: '調査時間',
          child: Row(
            children: [
              Expanded(
                child: PrimaryField(
                  text: inspection.overview.schedule.startedAt?.hm() ?? '',
                  onTap: () async {
                    final date = await DatePicker.showTimePicker(
                      context,
                      showTitleActions: true,
                      showSecondsColumn: false,
                      currentTime: DateTime.now(),
                      locale: LocaleType.jp,
                    );
                    if (date == null) return;
                    controller.updateSchedule(
                        inspection.overview.schedule.copyWith(startedAt: date));
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
                  text: inspection.overview.schedule.endedAt?.hm() ?? '',
                  onTap: () async {
                    final date = await DatePicker.showTimePicker(
                      context,
                      showSecondsColumn: false,
                      showTitleActions: true,
                      currentTime: DateTime.now(),
                      locale: LocaleType.jp,
                    );
                    if (date == null) return;
                    controller.updateSchedule(
                        inspection.overview.schedule.copyWith(endedAt: date));
                  },
                ),
              ),
            ],
          ),
        ),
        SectionItem(
          title: '電気',
          child: DropdownField<bool>(
            value: () {
              if (inspection.overview.lifeline.electricity == null) return null;
              return SelectionItem(
                value: inspection.overview.lifeline.electricity!,
                name:
                    inspection.overview.lifeline.electricity! ? '通電あり' : '通電なし',
              );
            }(),
            all: [false, true]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? '通電あり' : '通電なし',
                    ))
                .toList(),
            onSelect: (isOn) {
              controller.updateLifelines(
                  inspection.overview.lifeline.copyWith(electricity: isOn));
            },
          ),
        ),
        SectionItem(
          title: '水道',
          child: DropdownField<bool>(
            value: () {
              if (inspection.overview.lifeline.water == null) return null;
              return SelectionItem(
                value: inspection.overview.lifeline.water!,
                name: inspection.overview.lifeline.water! ? '開栓あり' : '開栓なし',
              );
            }(),
            all: [false, true]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? '開栓あり' : '開栓なし',
                    ))
                .toList(),
            onSelect: (isOn) {
              controller.updateLifelines(
                  inspection.overview.lifeline.copyWith(water: isOn));
            },
          ),
        ),
        SectionItem(
          title: 'ガス',
          child: DropdownField<bool>(
            value: () {
              if (inspection.overview.lifeline.gas == null) return null;
              return SelectionItem(
                value: inspection.overview.lifeline.gas!,
                name: inspection.overview.lifeline.gas! ? '開栓あり' : '開栓なし',
              );
            }(),
            all: [false, true]
                .map((value) => SelectionItem(
                      value: value,
                      name: value ? '開栓あり' : '開栓なし',
                    ))
                .toList(),
            onSelect: (isOn) {
              controller.updateLifelines(
                  inspection.overview.lifeline.copyWith(gas: isOn));
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '調査所見',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.overview.findings ?? '',
            onChange: (text) {
              controller
                  .updateOverview(inspection.overview.copyWith(findings: text));
            },
          ),
        ),
      ],
    );
  }
}
