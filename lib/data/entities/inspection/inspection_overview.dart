import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/detail/detail.dart';

part 'inspection_overview.freezed.dart';
part 'inspection_overview.g.dart';

@freezed
class InspectionOverview with _$InspectionOverview {
  const InspectionOverview._();

  @JsonSerializable(explicitToJson: true)
  const factory InspectionOverview({
    String? buildingName,
    String? clientName,
    String? witnessName,
  }) = _InspectionOverview;

  factory InspectionOverview.fromJson(Map<String, dynamic> json) =>
      _$InspectionOverviewFromJson(json);

  bool get complete {
    return buildingName?.isNotEmpty == true &&
        clientName?.isNotEmpty == true &&
        witnessName?.isNotEmpty == true;
  }
}
