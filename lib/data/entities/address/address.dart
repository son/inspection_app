import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const Address._();

  @JsonSerializable(explicitToJson: true)
  const factory Address({
    String? name,
    String? postCode,
    String? prefecture,
    String? municipality,
    String? buildingName,
    String? roomNumber,
    AddressType? addressType,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  bool get complete {
    return (name?.isNotEmpty ?? false) &&
        (postCode?.isNotEmpty ?? false) &&
        (prefecture?.isNotEmpty ?? false) &&
        (municipality?.isNotEmpty ?? false) &&
        (roomNumber?.isNotEmpty ?? false) &&
        (addressType != null);
  }
}

enum AddressType {
  lotNumber(label: '地名地番'),
  residentialAddress(label: '住居表示');

  const AddressType({required this.label});

  final String label;
}
