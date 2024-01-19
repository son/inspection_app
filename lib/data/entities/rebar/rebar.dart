import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/damage/damage.dart';
import 'package:inspection_app/data/entities/result.dart';

part 'rebar.freezed.dart';
part 'rebar.g.dart';

@freezed
class Rebar with _$Rebar {
  const Rebar._();

  @JsonSerializable(explicitToJson: true)
  const factory Rebar({
    bool? exploration,
    @Default(Damage()) Damage side,
    @Default(Damage()) Damage bottom,
    Coverage? coverage,
    String? remarks,
    @Default(false) bool notApplicable,
  }) = _Rebar;

  factory Rebar.fromJson(Map<String, dynamic> json) => _$RebarFromJson(json);

  Rebar allPassed() {
    return copyWith(
      notApplicable: false,
      side: side.copyWith(result: Result.passed),
      bottom: bottom.copyWith(result: Result.passed),
    );
  }

  bool get complete {
    if (notApplicable) {
      return true;
    }
    if (exploration == null) {
      return false;
    }
    if (exploration == false) {
      return true;
    }

    final results = [
      side.result,
      bottom.result,
    ];
    if (results.any((result) => result == Result.none)) {
      return false;
    }
    final sideOk = side.result == Result.passed ||
        (side.result == Result.failure &&
            (side.part?.isNotEmpty ?? false) &&
            (side.content?.isNotEmpty ?? false) &&
            (side.situation?.isNotEmpty ?? false));
    final bottomOk = bottom.result == Result.passed ||
        (bottom.result == Result.failure &&
            (bottom.part?.isNotEmpty ?? false) &&
            (bottom.content?.isNotEmpty ?? false) &&
            (bottom.situation?.isNotEmpty ?? false));
    return sideOk && bottomOk && coverage != null;
  }
}
