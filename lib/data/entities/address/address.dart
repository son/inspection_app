import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const Address._();

  const factory Address({
    @Default('') String postCode,
    @Default('') String prefecture,
    @Default('') String municipality,
    @Default('') String buildingName,
    @Default('') String roomNumber,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  static const empty = Address._();
}
