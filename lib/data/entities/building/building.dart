import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/address/address.dart';

part 'building.freezed.dart';
part 'building.g.dart';

@freezed
class Building with _$Building {
  const Building._();

  const factory Building({
    @Default('') String name,
    @Default(StructureType.wooden) StructureType structureType,
    @Default(0.0) double totalFloorArea,
    @Default(Floor()) Floor floor,
    @Default(Address()) Address address,
    @Default('東京都') String prefecture,
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
    @Default(1) int ground,
    @Default(0) int underground,
  }) = _Floor;

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);
}
