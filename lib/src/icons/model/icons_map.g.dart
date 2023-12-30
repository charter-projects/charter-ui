// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icons_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IconsMap _$IconsMapFromJson(Map<String, dynamic> json) => IconsMap(
      windowClose: _$JsonConverterFromJson<Map<String, dynamic>, IconData?>(
          IconsMap._readIconValue(json, 'windowClose'),
          const NullableIconDataConverter().fromJson),
      windowRestore: _$JsonConverterFromJson<Map<String, dynamic>, IconData?>(
          IconsMap._readIconValue(json, 'windowRestore'),
          const NullableIconDataConverter().fromJson),
      windowMinimize: _$JsonConverterFromJson<Map<String, dynamic>, IconData?>(
          IconsMap._readIconValue(json, 'windowMinimize'),
          const NullableIconDataConverter().fromJson),
      windowMaximize: _$JsonConverterFromJson<Map<String, dynamic>, IconData?>(
          IconsMap._readIconValue(json, 'windowMaximize'),
          const NullableIconDataConverter().fromJson),
    );

Map<String, dynamic> _$IconsMapToJson(IconsMap instance) => <String, dynamic>{
      'windowClose':
          const NullableIconDataConverter().toJson(instance.windowClose),
      'windowRestore':
          const NullableIconDataConverter().toJson(instance.windowRestore),
      'windowMinimize':
          const NullableIconDataConverter().toJson(instance.windowMinimize),
      'windowMaximize':
          const NullableIconDataConverter().toJson(instance.windowMaximize),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
