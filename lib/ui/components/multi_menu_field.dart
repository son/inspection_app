import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';

import 'menu_tap_gesture.dart';
import 'primary_field.dart';

class MultiMenuField<T> extends StatelessWidget {
  const MultiMenuField({
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
    return MenuTapGesture(
      items: all
          .map((e) => MenuItem(
                icon: values.map((e) => e.value).contains(e.value)
                    ? const Icon(
                        Icons.check,
                        color: Colors.black87,
                      )
                    : const SizedBox(
                        height: 24,
                        width: 24,
                      ),
                title: e.name,
                bold: values.map((e) => e.value).contains(e.value),
                onTap: () {
                  final raws = values.map((e) => e.value).toList();
                  raws.contains(e.value)
                      ? onSelect([...raws]..remove(e.value))
                      : onSelect([...raws, e.value]);
                },
              ))
          .toList(),
      child: PrimaryField(
        text:
            '$leftText${values.map((e) => e.name).sorted().join('、')}$rightText',
        onTap: () {},
      ),
    );
  }
}
