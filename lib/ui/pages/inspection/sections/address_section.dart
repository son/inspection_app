import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '物件所在地',
      complete: inspection.address.complete,
      children: [
        SectionItem(
          title: '住所標記方法',
          incomplete: inspection.address.addressType == null,
          child: DropdownField<AddressType>(
            value: SelectionItem.orNull(
              value: inspection.address.addressType,
              name: inspection.address.addressType?.label,
            ),
            all: AddressType.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (addressType) {
              controller.updateAddress(
                inspection.address.copyWith(addressType: addressType),
              );
            },
          ),
        ),
        SectionItem(
          title: '郵便番号',
          incomplete: inspection.address.postCode?.isEmpty ?? true,
          child: PrimaryTextField(
            hintText: 'xxxxxxx (ハイフンなし)',
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: const TextInputType.numberWithOptions(
              decimal: true,
            ),
            onChange: (text) {
              controller.updateAddress(
                inspection.address.copyWith(postCode: text),
              );
            },
          ),
        ),
        SectionItem(
          title: '都道府県',
          incomplete: inspection.address.prefecture == null,
          child: DropdownField<String>(
            value: SelectionItem.orNull(
              value: inspection.address.prefecture,
              name: inspection.address.prefecture,
            ),
            all: PREFECTURES
                .map((value) => SelectionItem(
                      value: value,
                      name: value,
                    ))
                .toList(),
            onSelect: (value) {
              controller.updateAddress(
                inspection.address.copyWith(prefecture: value),
              );
            },
          ),
        ),
        SectionItem(
          title: '市区町村・番地',
          incomplete: inspection.address.municipality?.isEmpty ?? true,
          child: PrimaryTextField(
            hintText: '市区町村　番地',
            initialText: inspection.address.municipality ?? '',
            onChange: (text) {
              controller.updateAddress(
                inspection.address.copyWith(municipality: text),
              );
            },
          ),
        ),
        SectionItem(
          title: '建物名',
          incomplete: inspection.address.name?.isEmpty ?? true,
          child: PrimaryTextField(
            hintText: 'マンションなどの名称',
            initialText: inspection.address.name ?? '',
            onChange: (text) {
              controller.updateAddress(
                inspection.address.copyWith(name: text),
              );
            },
          ),
        ),
        SectionItem(
          title: '部屋番号',
          incomplete: inspection.address.roomNumber?.isEmpty ?? true,
          child: PrimaryTextField(
            fixedText: '号室',
            initialText: inspection.address.roomNumber ?? '',
            onChange: (text) {
              controller.updateAddress(
                inspection.address.copyWith(roomNumber: text),
              );
            },
          ),
        ),
      ],
    );
  }
}
