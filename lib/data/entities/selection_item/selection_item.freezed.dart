// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectionItem<T> {
  T get value => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectionItemCopyWith<T, SelectionItem<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionItemCopyWith<T, $Res> {
  factory $SelectionItemCopyWith(
          SelectionItem<T> value, $Res Function(SelectionItem<T>) then) =
      _$SelectionItemCopyWithImpl<T, $Res, SelectionItem<T>>;
  @useResult
  $Res call({T value, String name});
}

/// @nodoc
class _$SelectionItemCopyWithImpl<T, $Res, $Val extends SelectionItem<T>>
    implements $SelectionItemCopyWith<T, $Res> {
  _$SelectionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectionItemCopyWith<T, $Res>
    implements $SelectionItemCopyWith<T, $Res> {
  factory _$$_SelectionItemCopyWith(
          _$_SelectionItem<T> value, $Res Function(_$_SelectionItem<T>) then) =
      __$$_SelectionItemCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value, String name});
}

/// @nodoc
class __$$_SelectionItemCopyWithImpl<T, $Res>
    extends _$SelectionItemCopyWithImpl<T, $Res, _$_SelectionItem<T>>
    implements _$$_SelectionItemCopyWith<T, $Res> {
  __$$_SelectionItemCopyWithImpl(
      _$_SelectionItem<T> _value, $Res Function(_$_SelectionItem<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? name = null,
  }) {
    return _then(_$_SelectionItem<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectionItem<T> extends _SelectionItem<T> {
  const _$_SelectionItem({required this.value, required this.name}) : super._();

  @override
  final T value;
  @override
  final String name;

  @override
  String toString() {
    return 'SelectionItem<$T>(value: $value, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectionItem<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectionItemCopyWith<T, _$_SelectionItem<T>> get copyWith =>
      __$$_SelectionItemCopyWithImpl<T, _$_SelectionItem<T>>(this, _$identity);
}

abstract class _SelectionItem<T> extends SelectionItem<T> {
  const factory _SelectionItem(
      {required final T value,
      required final String name}) = _$_SelectionItem<T>;
  const _SelectionItem._() : super._();

  @override
  T get value;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SelectionItemCopyWith<T, _$_SelectionItem<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
