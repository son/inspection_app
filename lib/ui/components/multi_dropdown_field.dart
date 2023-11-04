import 'package:collection/collection.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class MultiDropdownField<T> extends StatelessWidget {
  const MultiDropdownField({
    super.key,
    required this.values,
    required this.all,
    required this.onSelect,
    this.leftText = '',
    this.rightText = '',
  });

  final List<SelectionItem<T>> values;
  final List<SelectionItem<T>> all;
  final Function(List<T>) onSelect;
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        value: values.isEmpty ? null : values.last,
        onChanged: (SelectionItem<T>? value) {
          if (value?.value == null) return;
          final raws = values.map((e) => e.value).toList();
          values.contains(value)
              ? onSelect([...raws]..remove(value!.value))
              : onSelect([...raws, value!.value]);
        },
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.grey,
          ),
        ),
        buttonStyleData: const ButtonStyleData(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 280,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
        ),
        selectedItemBuilder: (context) {
          return all
              .map(
                (value) => Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '$leftText${values.map((e) => e.name).sorted().join('、')}$rightText',
                    style: TextStyles.n14,
                    maxLines: 2,
                  ),
                ),
              )
              .toList();
        },
        items: all
            .map(
              (item) => DropdownMenuItem<SelectionItem<T>>(
                value: item,
                child: Container(
                  decoration: item == all.first
                      ? null
                      : const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.grey, width: 1),
                          ),
                        ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      if (values.contains(item)) ...[
                        const Icon(
                          Icons.check_rounded,
                          color: Colors.black87,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                      ] else ...[
                        const SizedBox(width: 32),
                      ],
                      Text(
                        item.name,
                        style: TextStyles.n14,
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
