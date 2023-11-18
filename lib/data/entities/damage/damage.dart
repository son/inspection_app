// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '../photo/photo.dart';
import '../result.dart';

part 'damage.freezed.dart';
part 'damage.g.dart';

@freezed
class Damage with _$Damage {
  const Damage._();

  const factory Damage({
    @Default(Result.none) Result result,
    @Default(<Direction>[]) List<Direction> directions,
    @Default(0.0) double max,
    @Default(<Photo>[]) List<Photo> photos,
    @Default(<String>[]) List<String> details,
  }) = _Damage;

  factory Damage.fromJson(Map<String, dynamic> json) => _$DamageFromJson(json);
}

const DAMAGE_DETAILS = {'広範囲に及ぶひび割れ', '広範囲に及ぶ欠損'};
