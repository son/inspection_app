// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earthquake_resistant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EarthquakeResistant _$$_EarthquakeResistantFromJson(
        Map<String, dynamic> json) =>
    _$_EarthquakeResistant(
      exploration: json['exploration'] as bool?,
      confirmationMethod: $enumDecodeNullable(
          _$ConfirmationMethodEnumMap, json['confirmationMethod']),
      certificate:
          $enumDecodeNullable(_$CertificateEnumMap, json['certificate']),
      issuer: $enumDecodeNullable(_$IssuerEnumMap, json['issuer']),
      regulation: $enumDecodeNullable(
          _$EarthquakeProofSafetyRegulationEnumMap, json['regulation']),
      remarks: json['remarks'] as String? ?? '',
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Photo>[],
    );

Map<String, dynamic> _$$_EarthquakeResistantToJson(
        _$_EarthquakeResistant instance) =>
    <String, dynamic>{
      'exploration': instance.exploration,
      'confirmationMethod':
          _$ConfirmationMethodEnumMap[instance.confirmationMethod],
      'certificate': _$CertificateEnumMap[instance.certificate],
      'issuer': _$IssuerEnumMap[instance.issuer],
      'regulation':
          _$EarthquakeProofSafetyRegulationEnumMap[instance.regulation],
      'remarks': instance.remarks,
      'photos': instance.photos.map((e) => e.toJson()).toList(),
    };

const _$ConfirmationMethodEnumMap = {
  ConfirmationMethod.unknown: 'unknown',
  ConfirmationMethod.confirmation: 'confirmation',
  ConfirmationMethod.regulation: 'regulation',
};

const _$CertificateEnumMap = {
  Certificate.performanceEvaluation: 'performanceEvaluation',
  Certificate.saleDefectWarrantyInsurance: 'saleDefectWarrantyInsurance',
  Certificate.earthquakeProofComplianceCertificate:
      'earthquakeProofComplianceCertificate',
  Certificate.earthquakeProofRetrofittingCertificate:
      'earthquakeProofRetrofittingCertificate',
  Certificate.earthquakeProofDiagnosisReport: 'earthquakeProofDiagnosisReport',
  Certificate.propertyTaxReductionCertificate:
      'propertyTaxReductionCertificate',
  Certificate.structuralCalculationReport: 'structuralCalculationReport',
};

const _$IssuerEnumMap = {
  Issuer.designatedInspectionAgency: 'designatedInspectionAgency',
  Issuer.registeredHousingEvaluationAgency: 'registeredHousingEvaluationAgency',
  Issuer.homeDefectWarrantyInsuranceCorporation:
      'homeDefectWarrantyInsuranceCorporation',
  Issuer.architect: 'architect',
};

const _$EarthquakeProofSafetyRegulationEnumMap = {
  EarthquakeProofSafetyRegulation.unknown: 'unknown',
  EarthquakeProofSafetyRegulation.meet: 'meet',
  EarthquakeProofSafetyRegulation.unmeet: 'unmeet',
};
