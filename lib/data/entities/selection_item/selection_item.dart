import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_item.freezed.dart';

@freezed
class SelectionItem<T> with _$SelectionItem<T> {
  const SelectionItem._();

  const factory SelectionItem({
    required T value,
    required String name,
  }) = _SelectionItem<T>;
}
