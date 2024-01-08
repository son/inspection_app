import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'outer_wall.freezed.dart';
part 'outer_wall.g.dart';

@freezed
class OuterWall with _$OuterWall {
  const OuterWall._();

  @JsonSerializable(explicitToJson: true)
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
    Coverage? coverage,
    @Default('') String remarks,
  }) = _OuterWall;

  factory OuterWall.fromJson(Map<String, dynamic> json) =>
      _$OuterWallFromJson(json);

  OuterWall allPassed() {
    return copyWith(
      dryDamage: dryDamage.copyWith(result: Result.passed),
      dryWideDamage: dryWideDamage.copyWith(result: Result.passed),
      dryCorrosion: dryCorrosion.copyWith(result: Result.passed),
      tileDamage: tileDamage.copyWith(result: Result.passed),
      tileWideDamage: tileWideDamage.copyWith(result: Result.passed),
      tileFloat: tileFloat.copyWith(result: Result.passed),
      paintDamage: paintDamage.copyWith(result: Result.passed),
      paintFloat: paintFloat.copyWith(result: Result.passed),
      otherDamage: otherDamage.copyWith(result: Result.passed),
      otherWideDamage: otherWideDamage.copyWith(result: Result.passed),
      otherCorrosion: otherCorrosion.copyWith(result: Result.passed),
      otherFloat: otherFloat.copyWith(result: Result.passed),
      rainWallSealing: rainWallSealing.copyWith(result: Result.passed),
      rainGap: rainGap.copyWith(result: Result.passed),
      rainCeilingSealing: rainCeilingSealing.copyWith(result: Result.passed),
      rainCeilingLeak: rainCeilingLeak.copyWith(result: Result.passed),
    );
  }
}
