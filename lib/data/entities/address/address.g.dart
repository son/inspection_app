// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      postCode: json['postCode'] as String?,
      prefecture: json['prefecture'] as String?,
      municipality: json['municipality'] as String?,
      buildingName: json['buildingName'] as String?,
      roomNumber: json['roomNumber'] as String?,
      addressType:
          $enumDecodeNullable(_$AddressTypeEnumMap, json['addressType']),
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'postCode': instance.postCode,
      'prefecture': instance.prefecture,
      'municipality': instance.municipality,
      'buildingName': instance.buildingName,
      'roomNumber': instance.roomNumber,
      'addressType': _$AddressTypeEnumMap[instance.addressType],
    };

const _$AddressTypeEnumMap = {
  AddressType.lotNumber: 'lotNumber',
  AddressType.residentialAddress: 'residentialAddress',
};
