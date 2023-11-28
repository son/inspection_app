import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'inner_wall.freezed.dart';
part 'inner_wall.g.dart';

@freezed
class InnerWall with _$InnerWall {
  const InnerWall._();

  const factory InnerWall({
    @Default(Damage()) Damage foundationDamage,
    @Default(Damage()) Damage foundationInclination,
    @Default(Damage()) Damage rainInnerWallLeak,
    Coverage? coverage,
    @Default('') String remarks,
  }) = _InnerWall;

  factory InnerWall.fromJson(Map<String, dynamic> json) =>
      _$InnerWallFromJson(json);
}
