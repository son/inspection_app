import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/address/address.dart';
import 'package:inspection_app/data/entities/json_supports.dart';

part 'building.freezed.dart';
part 'building.g.dart';

@freezed
class Building with _$Building {
  const Building._();

  @JsonSerializable(explicitToJson: true)
  const factory Building({
    String? name,
    StructureType? structureType,
    double? totalFloorArea,
    @Default(Floor()) Floor floor,
    @Default(Address()) Address address,
    String? prefecture,
    @Default(Repairing()) Repairing repairing,
    @Default(Renovation()) Renovation renovation,
    String? findings,
    @DateTimeOrNullConverter() DateTime? builtAt,
  }) = _Building;

  factory Building.fromJson(Map<String, dynamic> json) =>
      _$BuildingFromJson(json);
}

enum StructureType {
  wooden(name: '木造'),
  steel(name: '鉄骨造'),
  reinforcedConcrete(name: '鉄筋コンクリート造'),
  steelReinforcedConcrete(name: '鉄骨鉄筋コンクリート造'),
  mixed(name: 'その他（混合造など）');

  const StructureType({required this.name});

  final String name;
  static const title = '構造種別';
}

@freezed
class Floor with _$Floor {
  const Floor._();

  @JsonSerializable(explicitToJson: true)
  const factory Floor({
    int? ground,
    int? underground,
  }) = _Floor;

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);
}

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
