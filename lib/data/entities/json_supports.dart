import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, Object> {
  const DateTimeConverter();

  @override
  DateTime fromJson(Object json) {
    return (json as Timestamp).toDate();
  }

  @override
  Object toJson(DateTime object) {
    return Timestamp.fromDate(object);
  }
}

class DateTimeOrNullConverter implements JsonConverter<DateTime?, Object?> {
  const DateTimeOrNullConverter();

  @override
  DateTime? fromJson(Object? json) {
    if (json == null) return null;
    return (json as Timestamp).toDate();
  }

  @override
  Object? toJson(DateTime? object) {
    if (object == null) return null;
    return Timestamp.fromDate(object);
  }
}
