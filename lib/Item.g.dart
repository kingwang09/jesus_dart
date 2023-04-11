// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as String,
      etag: json['etag'] as String,
      selfLink: json['selfLink'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'etag': instance.etag,
      'selfLink': instance.selfLink,
    };
