// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      officeName: json['officeName'] as String? ?? '',
      officeRegistrationNumber:
          json['officeRegistrationNumber'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'officeName': instance.officeName,
      'officeRegistrationNumber': instance.officeRegistrationNumber,
    };
