import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_item.freezed.dart';

@freezed
class SelectionItem<T> with _$SelectionItem<T> {
  const SelectionItem._();

  const factory SelectionItem({
    required T value,
    required String name,
  }) = _SelectionItem<T>;

  static SelectionItem<T>? orNull<T>({
    required T? value,
    required String? name,
  }) {
    if (value == null || name == null) {
      return null;
    }
    return SelectionItem<T>(value: value, name: name);
  }
}
