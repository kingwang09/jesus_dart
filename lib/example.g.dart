// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      kind: json['kind'] as String,
      totalItems: json['totalItems'] as int,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'kind': instance.kind,
      'totalItems': instance.totalItems,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
    };
