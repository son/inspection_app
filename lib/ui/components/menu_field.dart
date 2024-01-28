import 'package:flutter/material.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';

import 'menu_tap_gesture.dart';
import 'primary_field.dart';

class MenuField<T> extends StatelessWidget {
  const MenuField({
    super.key,
    this.value,
    required this.all,
    required this.onSelect,
    this.leftText = '',
    this.rightText = '',
    this.unselectedText = '未入力',
    this.color = Colors.black87,
  });

  final SelectionItem<T>? value;
  final List<SelectionItem<T>> all;
  final Function(T) onSelect;
  final String leftText;
  final String rightText;
  final Color color;
  final String unselectedText;

  static MenuField result({
    required Result result,
    required Function(Result) onSelect,
  }) {
    return MenuField<Result>(
      color: switch (result) {
        Result.none => Colors.grey,
        Result.passed => Colors.blue,
        Result.failure => Colors.red,
      },
      value: SelectionItem(
        value: result,
        name: result.label,
      ),
      all: Result.values
          .map((value) => SelectionItem(
                value: value,
                name: value.label,
              ))
          .toList(),
      onSelect: onSelect,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MenuTapGesture(
      items: all
          .map((e) => MenuItem(
                title: e.name,
                onTap: () => onSelect(e.value),
              ))
          .toList(),
      child: PrimaryField(
        text:
            '$leftText${value?.name == null ? unselectedText : value?.name ?? ''}$rightText',
        onTap: () {},
      ),
    );
  }
}
