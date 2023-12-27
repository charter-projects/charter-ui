// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Icons _$IconsFromJson(Map<String, dynamic> json) => Icons(
      windowMaximize: const IconDataConverter()
          .fromJson(json['windowMaximize'] as Map<String, dynamic>),
      windowRestore: const IconDataConverter()
          .fromJson(json['windowRestore'] as Map<String, dynamic>),
      windowMinimize: const IconDataConverter()
          .fromJson(json['windowMinimize'] as Map<String, dynamic>),
      windowClose: const IconDataConverter()
          .fromJson(json['windowClose'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IconsToJson(Icons instance) => <String, dynamic>{
      'windowClose': const IconDataConverter().toJson(instance.windowClose),
      'windowMaximize':
          const IconDataConverter().toJson(instance.windowMaximize),
      'windowRestore': const IconDataConverter().toJson(instance.windowRestore),
      'windowMinimize':
          const IconDataConverter().toJson(instance.windowMinimize),
    };
