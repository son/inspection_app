import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String id,
    // 調査実施者の氏名
    @Default('') String name,
    // 所属事務所名
    @Default('') String officeName,
    // 建築士事務所登録番号
    @Default('') String officeRegistrationNumber,
    // 建築士登録番号
    // 調査実施者への講習の実施講習機関名及び修了証明書番号
    // 建築士資格種別
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
