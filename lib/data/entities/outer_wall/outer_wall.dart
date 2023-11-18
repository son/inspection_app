import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'outer_wall.freezed.dart';
part 'outer_wall.g.dart';

@freezed
class OuterWall with _$OuterWall {
  const OuterWall._();

  const factory OuterWall({
    @Default(<String>[]) List<String> finishings,
    @Default(Damage()) Damage dryDamage,
    @Default(Damage()) Damage dryWideDamage,
    @Default(Damage()) Damage dryCorrosion,
    @Default(Damage()) Damage tileDamage,
    @Default(Damage()) Damage tileWideDamage,
    @Default(Damage()) Damage tileFloat,
    @Default(Damage()) Damage paintDamage,
    @Default(Damage()) Damage paintFloat,
    @Default(Damage()) Damage otherDamage,
    @Default(Damage()) Damage otherWideDamage,
    @Default(Damage()) Damage otherCorrosion,
    @Default(Damage()) Damage otherFloat,
    @Default(Damage()) Damage rainWallSealing,
    @Default(Damage()) Damage rainGap,
    @Default(Damage()) Damage rainCeilingSealing,
    @Default(Damage()) Damage rainCeilingLeak,
    @Default(Coverage.almost) Coverage coverage,
    @Default('') String remarks,
  }) = _OuterWall;

  factory OuterWall.fromJson(Map<String, dynamic> json) =>
      _$OuterWallFromJson(json);
}
