import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

import '../converter.dart';

part 'iconsMap.g.dart';

@JsonSerializable(
  disallowUnrecognizedKeys: false,
)
final class IconsMap {
  IconsMap({
    this.windowClose,
    this.windowRestore,
    this.windowMinimize,
    this.windowMaximize,
  });

  factory IconsMap.fromJson(Map<String, dynamic> json) =>
      _$IconsMapFromJson(json);

  static Object? _readIconValue(Map<dynamic, dynamic> json, String key) {
    return {
      '_fontFamily': json['fontFamily'],
      '_fontPackage': json['fontPackage'],
      '_matchTextDirection': json['matchTextDirection'],
      'data': (json['icons'] as Map<String, dynamic>)[key],
    };
  }

  @JsonKey(
    readValue: _readIconValue,
  )
  @NullableIconDataConverter()
  final IconData? windowClose;

  @JsonKey(
    readValue: _readIconValue,
  )
  @NullableIconDataConverter()
  final IconData? windowRestore;

  @JsonKey(
    readValue: _readIconValue,
  )
  @NullableIconDataConverter()
  final IconData? windowMinimize;

  @JsonKey(
    readValue: _readIconValue,
  )
  @NullableIconDataConverter()
  final IconData? windowMaximize;
}

