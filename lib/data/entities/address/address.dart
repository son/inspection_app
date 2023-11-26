import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const Address._();

  const factory Address({
    String? postCode,
    String? prefecture,
    String? municipality,
    String? buildingName,
    String? roomNumber,
    AddressType? addressType,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  static const empty = Address._();
}

enum AddressType {
  lotNumber(label: '地名地番'),
  residentialAddress(label: '住居表示');

  const AddressType({required this.label});

  final String label;
}
