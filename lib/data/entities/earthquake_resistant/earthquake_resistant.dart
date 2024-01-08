import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/photo/photo.dart';

part 'earthquake_resistant.freezed.dart';
part 'earthquake_resistant.g.dart';

@freezed
class EarthquakeResistant with _$EarthquakeResistant {
  const EarthquakeResistant._();

  @JsonSerializable(explicitToJson: true)
  const factory EarthquakeResistant({
    bool? exploration,
    ConfirmationMethod? confirmationMethod,
    Certificate? certificate,
    Issuer? issuer,
    EarthquakeProofSafetyRegulation? regulation,
    String? remarks,
    @Default(<Photo>[]) List<Photo> photos,
    @Default(false) notApplicable,
  }) = _EarthquakeResistant;

  factory EarthquakeResistant.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeResistantFromJson(json);
}

enum ConfirmationMethod {
  unknown(label: '不明'),
  confirmation(label: '確認済証、概要書等'),
  regulation(label: '耐震関係規定（証明書等）');

  const ConfirmationMethod({required this.label});

  final String label;
}

enum Certificate {
  performanceEvaluation(label: '既存住宅に係る建設住宅性能評価書（耐震等級１以上）'),
  saleDefectWarrantyInsurance(label: '住宅売買瑕疵担保保険の付保証明書'),
  earthquakeProofComplianceCertificate(label: '耐震基準適合証明書'),
  earthquakeProofRetrofittingCertificate(label: '住宅耐震改修証明書'),
  earthquakeProofDiagnosisReport(label: '耐震診断の結果報告書'),
  propertyTaxReductionCertificate(label: '固定資産税減額証明書'),
  structuralCalculationReport(label: '構造計算書（割印のある「構造安全証明書」を含む）');

  const Certificate({required this.label});

  final String label;
}

enum Issuer {
  designatedInspectionAgency(label: '指定確認検査機関'),
  registeredHousingEvaluationAgency(label: '登録住宅性能評価機関'),
  homeDefectWarrantyInsuranceCorporation(label: '住宅瑕疵担保責任保険法人'),
  architect(label: '建築士（記名・押印）');

  const Issuer({required this.label});

  final String label;
}

enum EarthquakeProofSafetyRegulation {
  unknown(label: '適合する'),
  meet(label: '適合しない'),
  unmeet(label: '不明');

  const EarthquakeProofSafetyRegulation({required this.label});

  final String label;
}
