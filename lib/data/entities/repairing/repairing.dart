import 'package:freezed_annotation/freezed_annotation.dart';

part 'repairing.freezed.dart';
part 'repairing.g.dart';

@freezed
class Repairing with _$Repairing {
  const Repairing._();

  @JsonSerializable(explicitToJson: true)
  const factory Repairing({
    bool? repaired,
    String? parts,
    String? remarks,
    String? method,
  }) = _Repairing;

  factory Repairing.fromJson(Map<String, dynamic> json) =>
      _$RepairingFromJson(json);

  bool get complete {
    if (repaired == null) {
      return false;
    }
    if (!repaired!) {
      return true;
    }
    return (parts?.isNotEmpty ?? false) && (method?.isNotEmpty ?? false);
  }
}

@freezed
class Renovation with _$Renovation {
  const Renovation._();

  const factory Renovation({
    bool? renovating,
    String? parts,
  }) = _Renovation;

  factory Renovation.fromJson(Map<String, dynamic> json) =>
      _$RenovationFromJson(json);

  bool get complete {
    if (renovating == null) {
      return false;
    }
    if (!renovating!) {
      return true;
    }
    return parts?.isNotEmpty ?? false;
  }
}
