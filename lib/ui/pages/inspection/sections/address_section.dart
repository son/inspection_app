import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/entities/values/prefecture.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class AddressSection extends HookConsumerWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inspection = ref.watch(inspectionProvider);
    final controller = ref.read(inspectionProvider.notifier);

    return Section(
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
              controller.updatePrefecture(value);
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
    );
  }
}
