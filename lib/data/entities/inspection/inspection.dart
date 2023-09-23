import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/inspection/inspection_overview.dart';

part 'inspection.freezed.dart';
part 'inspection.g.dart';

@freezed
class Inspection with _$Inspection {
  const Inspection._();

  const factory Inspection({
    required String id,
    DateTime? createdAt,
    @Default(InspectionOverview.empty) InspectionOverview overview,
  }) = _Inspection;

  factory Inspection.fromJson(Map<String, dynamic> json) =>
      _$InspectionFromJson(json);
}
