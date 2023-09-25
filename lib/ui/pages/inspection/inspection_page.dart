import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/building/building.dart';
import 'package:inspection_app/data/entities/inspection/inspection_overview.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/entities/values/prefecture.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/text_styles.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class InspectionPage extends HookConsumerWidget {
  const InspectionPage({super.key});

  static CupertinoPageRoute route() => CupertinoPageRoute(
        builder: (_) => const InspectionPage(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PrimaryAppBar(
        title: '',
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              '削除',
              style: TextStyles.n16.copyWith(color: Colors.red),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        padding: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top + kToolbarHeight + 16,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            Section(
              title: '調査物件情報',
              children: [
                SectionItem(
                  title: '物件番号',
                  child: PrimaryTextField(
                    hintText: '入力すると報告書の全ページ左上に表示されます',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '建物名称',
                  child: PrimaryTextField(
                    hintText: '建物名称',
                    fixedText: '様邸',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '調査依頼主',
                  child: PrimaryTextField(
                    hintText: '会社名・担当者名',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '調査立合者',
                  child: PrimaryTextField(
                    hintText: '会社名・担当者名',
                    onChange: (text) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Section(
              title: '物件所在地',
              children: [
                SectionItem(
                  title: '住所標記方法',
                  child: PrimaryTextField(
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '郵便番号',
                  child: PrimaryTextField(
                    hintText: 'xxx-xxxx',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '都道府県',
                  child: DropdownField<String>(
                    value: SelectionItem(
                      value: inspection.overview.building.prefecture,
                      name: inspection.overview.building.prefecture,
                    ),
                    all: PREFECTURES
                        .map((value) => SelectionItem(
                              value: value,
                              name: value,
                            ))
                        .toList(),
                    onSelect: (value) {
                      ref
                          .read(inspectionProvider.notifier)
                          .updatePrefecture(value);
                    },
                  ),
                ),
                SectionItem(
                  title: '市区町村・番地',
                  child: PrimaryTextField(
                    hintText: '市区町村　番地',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '建物名',
                  child: PrimaryTextField(
                    hintText: 'マンションなどの名称',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '部屋番号',
                  child: PrimaryTextField(
                    hintText: '',
                    fixedText: '号室',
                    onChange: (text) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Section(
              title: '物件詳細',
              children: [
                SectionItem(
                  title: '調査区分',
                  child: DropdownField<HousingType>(
                    value: SelectionItem(
                      value: inspection.overview.housingType,
                      name: inspection.overview.housingType.name,
                    ),
                    all: HousingType.values
                        .map((value) => SelectionItem(
                              value: value,
                              name: value.name,
                            ))
                        .toList(),
                    onSelect: (type) {
                      ref
                          .read(inspectionProvider.notifier)
                          .updateHousingType(type);
                    },
                  ),
                ),
                SectionItem(
                  title: '構造種別',
                  child: DropdownField<StructureType>(
                    value: SelectionItem(
                      value: inspection.overview.building.structureType,
                      name: inspection.overview.building.structureType.name,
                    ),
                    all: StructureType.values
                        .map((value) => SelectionItem(
                              value: value,
                              name: value.name,
                            ))
                        .toList(),
                    onSelect: (type) {
                      ref
                          .read(inspectionProvider.notifier)
                          .updateStructureType(type);
                    },
                  ),
                ),
                SectionItem(
                  title: '延床面積',
                  child: PrimaryTextField(
                    onChange: (text) {},
                    fixedText: '㎡',
                  ),
                ),
                SectionItem(
                  title: '階数',
                  child: Row(
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: 100,
                        child: DropdownField<int>(
                          leftText: '地上 ',
                          value: SelectionItem(
                            value: inspection.overview.building.floor.ground,
                            name:
                                '${inspection.overview.building.floor.ground} 階',
                          ),
                          all: List.generate(63, (index) => index + 1)
                              .map((value) => SelectionItem(
                                    value: value,
                                    name: '$value 階',
                                  ))
                              .toList(),
                          onSelect: (value) {
                            ref
                                .read(inspectionProvider.notifier)
                                .updateGround(value);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: DropdownField<int>(
                          leftText: '地下 ',
                          value: SelectionItem(
                            value:
                                inspection.overview.building.floor.underground,
                            name:
                                '${inspection.overview.building.floor.underground} 階',
                          ),
                          all: List.generate(4, (index) => index)
                              .map((value) => SelectionItem(
                                    value: value,
                                    name: '$value 階',
                                  ))
                              .toList(),
                          onSelect: (value) {
                            ref
                                .read(inspectionProvider.notifier)
                                .updateUnderGround(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SectionItem(
                  axis: Axis.vertical,
                  title: '調査所見',
                  child: PrimaryTextField(
                    textAlign: TextAlign.start,
                    maxLines: 100,
                    onChange: (text) {},
                  ),
                ),
                // TODO: 建築時期
                // SectionItem(
                //   title: '建築時期',
                //   child: Row(
                //     children: [
                //       const Spacer(),
                //       SizedBox(
                //         width: 100,
                //         child: DropdownField<int>(
                //           rightText: '年',
                //           value: SelectionItem(
                //             value: inspection.overview.building.floor.ground,
                //             name:
                //                 '${inspection.overview.building.floor.ground} 階',
                //           ),
                //           all: List.generate(63, (index) => index + 1)
                //               .map((value) => SelectionItem(
                //                     value: value,
                //                     name: '$value 階',
                //                   ))
                //               .toList(),
                //           onSelect: (value) {
                //             ref
                //                 .read(inspectionProvider.notifier)
                //                 .updateGround(value);
                //           },
                //         ),
                //       ),
                //       SizedBox(
                //         width: 100,
                //         child: DropdownField<int>(
                //           value: SelectionItem(
                //             value:
                //                 inspection.overview.building.floor.underground,
                //             name:
                //                 '${inspection.overview.building.floor.underground} 月',
                //           ),
                //           all: List.generate(4, (index) => index)
                //               .map((value) => SelectionItem(
                //                     value: value,
                //                     name: '$value 月',
                //                   ))
                //               .toList(),
                //           onSelect: (value) {
                //             ref
                //                 .read(inspectionProvider.notifier)
                //                 .updateUnderGround(value);
                //           },
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 16),
            Section(
              title: '調査時の状況',
              children: [
                SectionItem(
                  title: '天候',
                  child: DropdownField<Weather>(
                    value: SelectionItem(
                      value: inspection.overview.weather,
                      name: inspection.overview.weather.name,
                    ),
                    all: Weather.values
                        .map((value) => SelectionItem(
                              value: value,
                              name: value.name,
                            ))
                        .toList(),
                    onSelect: (weather) {
                      ref
                          .read(inspectionProvider.notifier)
                          .updateWeather(weather);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.paddingOf(context).bottom,
            ),
          ],
        ),
      ),
    );
  }
}
