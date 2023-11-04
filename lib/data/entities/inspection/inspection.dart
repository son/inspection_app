import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/foundation/foundation.dart';
import 'package:inspection_app/data/entities/photo/photo.dart';

import 'inspection_overview.dart';

part 'inspection.freezed.dart';
part 'inspection.g.dart';

@freezed
class Inspection with _$Inspection {
  const Inspection._();

  const factory Inspection({
    required String id,
    DateTime? createdAt,
    @Default(InspectionOverview()) InspectionOverview overview,
    @Default(<Photo>[]) List<Photo> photos,
    @Default(<String>[]) List<String> blueprints,
    @Default(Foundation()) Foundation foundation,
  }) = _Inspection;

  factory Inspection.fromJson(Map<String, dynamic> json) =>
      _$InspectionFromJson(json);

  static const empty = Inspection(id: '');
}
