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
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _OuterWall;

  factory OuterWall.fromJson(Map<String, dynamic> json) =>
      _$OuterWallFromJson(json);

  OuterWall allPassed() {
    return copyWith(
      notApplicable: false,
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

  bool get complete {
    if (notApplicable) {
      return true;
    }
    final results = [
      dryDamage.result,
      dryWideDamage.result,
      dryCorrosion.result,
      tileDamage.result,
      tileWideDamage.result,
      tileFloat.result,
      paintDamage.result,
      paintFloat.result,
      otherDamage.result,
      otherWideDamage.result,
      otherCorrosion.result,
      otherFloat.result,
      rainWallSealing.result,
      rainGap.result,
      rainCeilingSealing.result,
      rainCeilingLeak.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final dryDamageOk = dryDamage.result == Result.passed ||
        (dryDamage.result == Result.failure &&
            (dryDamage.directions.isNotEmpty) &&
            (dryDamage.max?.complete ?? false));
    final dryWideDamageOk = dryWideDamage.result == Result.passed ||
        (dryWideDamage.result == Result.failure &&
            (dryWideDamage.directions.isNotEmpty) &&
            (dryWideDamage.max?.complete ?? false));
    final dryCorrosionOk = dryCorrosion.result == Result.passed ||
        (dryCorrosion.result == Result.failure &&
            (dryCorrosion.directions.isNotEmpty));
    final tileDamageOk = tileDamage.result == Result.passed ||
        (tileDamage.result == Result.failure &&
            (tileDamage.directions.isNotEmpty) &&
            (tileDamage.max?.complete ?? false));
    final tileWideDamageOk = tileWideDamage.result == Result.passed ||
        (tileWideDamage.result == Result.failure &&
            (tileWideDamage.directions.isNotEmpty) &&
            (tileWideDamage.max?.complete ?? false));
    final tileFloatOk = tileFloat.result == Result.passed ||
        (tileFloat.result == Result.failure &&
            tileWideDamage.directions.isNotEmpty);
    final paintDamageOk = paintDamage.result == Result.passed ||
        (paintDamage.result == Result.failure &&
            paintDamage.directions.isNotEmpty);
    final paintFloatOk = paintFloat.result == Result.passed ||
        (paintFloat.result == Result.failure &&
            paintFloat.directions.isNotEmpty);
    final otherDamageOk = otherDamage.result == Result.passed ||
        (otherDamage.result == Result.failure &&
            (otherDamage.directions.isNotEmpty) &&
            (otherDamage.max?.complete ?? false));
    final otherWideDamageOk = otherWideDamage.result == Result.passed ||
        (otherWideDamage.result == Result.failure &&
            (otherWideDamage.directions.isNotEmpty) &&
            (otherWideDamage.max?.complete ?? false));
    final otherCorrosionOk = otherCorrosion.result == Result.passed ||
        (otherCorrosion.result == Result.failure &&
            (otherCorrosion.directions.isNotEmpty));
    final otherFloatOk = otherFloat.result == Result.passed ||
        (otherFloat.result == Result.failure &&
            otherFloat.directions.isNotEmpty);
    final rainWallSealingOk = rainWallSealing.result == Result.passed ||
        (rainWallSealing.result == Result.failure &&
            rainWallSealing.directions.isNotEmpty);
    final rainGapOk = rainGap.result == Result.passed ||
        (rainGap.result == Result.failure && rainGap.directions.isNotEmpty);
    final rainCeilingSealingOk = rainCeilingSealing.result == Result.passed ||
        (rainCeilingSealing.result == Result.failure &&
            rainCeilingSealing.directions.isNotEmpty);
    final rainCeilingLeakOk = rainCeilingLeak.result == Result.passed ||
        (rainCeilingLeak.result == Result.failure &&
            rainCeilingLeak.directions.isNotEmpty);
    return dryDamageOk &&
        dryWideDamageOk &&
        dryCorrosionOk &&
        tileDamageOk &&
        tileWideDamageOk &&
        tileFloatOk &&
        paintDamageOk &&
        paintFloatOk &&
        otherDamageOk &&
        otherWideDamageOk &&
        otherCorrosionOk &&
        otherFloatOk &&
        rainWallSealingOk &&
        rainGapOk &&
        rainCeilingSealingOk &&
        rainCeilingLeakOk &&
        coverage != null;
  }
}
