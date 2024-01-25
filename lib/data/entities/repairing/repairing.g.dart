// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repairing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repairing _$$_RepairingFromJson(Map<String, dynamic> json) => _$_Repairing(
      repaired: json['repaired'] as bool?,
      parts: json['parts'] as String?,
      remarks: json['remarks'] as String?,
      method: json['method'] as String?,
    );

Map<String, dynamic> _$$_RepairingToJson(_$_Repairing instance) =>
    <String, dynamic>{
      'repaired': instance.repaired,
      'parts': instance.parts,
      'remarks': instance.remarks,
      'method': instance.method,
    };

_$_Renovation _$$_RenovationFromJson(Map<String, dynamic> json) =>
    _$_Renovation(
      renovating: json['renovating'] as bool?,
      parts: json['parts'] as String?,
    );

Map<String, dynamic> _$$_RenovationToJson(_$_Renovation instance) =>
    <String, dynamic>{
      'renovating': instance.renovating,
      'parts': instance.parts,
    };
