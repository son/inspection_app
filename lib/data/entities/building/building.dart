import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/address/address.dart';

part 'building.freezed.dart';
part 'building.g.dart';

@freezed
class Building with _$Building {
  const Building._();

  const factory Building({
    String? name,
    StructureType? structureType,
    double? totalFloorArea,
    @Default(Floor()) Floor floor,
    @Default(Address()) Address address,
    String? prefecture,
    @Default(Repairing()) Repairing repairing,
    @Default(Renovation()) Renovation renovation,
    @Default('') String findings,
    DateTime? builtAt,
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

  const factory Floor({
    int? ground,
    int? underground,
  }) = _Floor;

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);
}

@freezed
class Repairing with _$Repairing {
  const Repairing._();

  const factory Repairing({
    bool? repaired,
    @Default('') String parts,
    @Default('') String remarks,
    @Default('') String method,
  }) = _Repairing;

  factory Repairing.fromJson(Map<String, dynamic> json) =>
      _$RepairingFromJson(json);
}

@freezed
class Renovation with _$Renovation {
  const Renovation._();

  const factory Renovation({
    bool? renovating,
    @Default('') String parts,
  }) = _Renovation;

  factory Renovation.fromJson(Map<String, dynamic> json) =>
      _$RenovationFromJson(json);
}
