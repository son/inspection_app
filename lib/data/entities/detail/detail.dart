import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/json_supports.dart';

part 'detail.freezed.dart';
part 'detail.g.dart';

@freezed
class Detail with _$Detail {
  const Detail._();

  @JsonSerializable(explicitToJson: true)
  const factory Detail({
    HousingType? housingType,
    StructureType? structureType,
    double? totalFloorArea,
    @Default(Floors()) Floors floor,
    String? findings,
    @DateTimeOrNullConverter() DateTime? builtAt,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

  bool get complete {
    return housingType != null &&
        structureType != null &&
        totalFloorArea != null &&
        floor.ground != null &&
        floor.underground != null &&
        builtAt != null;
  }
}

enum HousingType {
  detached(name: '一戸建ての住宅'),
  apartmentUnits(name: '（共同住宅など）住戸型'),
  apartmentBuilding(name: '（共同住宅など）住棟型');

  const HousingType({required this.name});

  final String name;
  static const title = '調査の区分';
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
class Floors with _$Floors {
  const Floors._();

  @JsonSerializable(explicitToJson: true)
  const factory Floors({
    int? ground,
    int? underground,
  }) = _Floors;

  factory Floors.fromJson(Map<String, dynamic> json) => _$FloorsFromJson(json);
}
