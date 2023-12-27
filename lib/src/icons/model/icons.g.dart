// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharterIconsData _$CharterIconsDataFromJson(Map<String, dynamic> json) =>
    CharterIconsData(
      fontFamily: json['fontFamily'] as String,
      icons: IconsMap.fromJson(CharterIconsData._readIconsValue(json, 'icons')
          as Map<String, dynamic>),
      source:
          json['source'] == null ? null : Uri.parse(json['source'] as String),
      fontPackage: json['fontPackage'] as String?,
      matchTextDirection: json['matchTextDirection'] as bool? ?? false,
      baselineAdjustment: (json['baselineAdjustment'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$CharterIconsDataToJson(CharterIconsData instance) =>
    <String, dynamic>{
      'fontFamily': instance.fontFamily,
      'fontPackage': instance.fontPackage,
      'source': instance.source?.toString(),
      'matchTextDirection': instance.matchTextDirection,
      'baselineAdjustment': instance.baselineAdjustment,
      'icons': instance.icons,
    };
