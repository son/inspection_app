import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/address/address.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/entities/values/prefecture.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class AddressSection extends HookConsumerWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '物件所在地',
      children: [
        SectionItem(
          title: '住所標記方法',
          child: DropdownField<AddressType>(
            value: SelectionItem.orNull(
              value: inspection.overview.building.address.addressType,
              name: inspection.overview.building.address.addressType?.label,
            ),
            all: AddressType.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (addressType) {
              final address = inspection.overview.building.address
                  .copyWith(addressType: addressType);
              final building =
                  inspection.overview.building.copyWith(address: address);
              final overview = inspection.overview.copyWith(building: building);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '郵便番号',
          child: PrimaryTextField(
            hintText: 'xxxxxxx (ハイフンなし)',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: const TextInputType.numberWithOptions(
              decimal: true,
            ),
            onChange: (text) {
              final address =
                  inspection.overview.building.address.copyWith(postCode: text);
              final building =
                  inspection.overview.building.copyWith(address: address);
              final overview = inspection.overview.copyWith(building: building);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '都道府県',
          child: DropdownField<String>(
            value: SelectionItem.orNull(
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
            initialText:
                inspection.overview.building.address.municipality ?? '',
            onChange: (text) {
              final address = inspection.overview.building.address
                  .copyWith(municipality: text);
              final building =
                  inspection.overview.building.copyWith(address: address);
              final overview = inspection.overview.copyWith(building: building);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '建物名',
          child: PrimaryTextField(
            hintText: 'マンションなどの名称',
            initialText: inspection.overview.building.name ?? '',
            onChange: (text) {
              final address = inspection.overview.building.address
                  .copyWith(buildingName: text);
              final building =
                  inspection.overview.building.copyWith(address: address);
              final overview = inspection.overview.copyWith(building: building);
              controller.updateOverview(overview);
            },
          ),
        ),
        SectionItem(
          title: '部屋番号',
          child: PrimaryTextField(
            fixedText: '号室',
            initialText: inspection.overview.building.address.roomNumber ?? '',
            onChange: (text) {
              final address = inspection.overview.building.address
                  .copyWith(roomNumber: text);
              final building =
                  inspection.overview.building.copyWith(address: address);
              final overview = inspection.overview.copyWith(building: building);
              controller.updateOverview(overview);
            },
          ),
        ),
      ],
    );
  }
}
