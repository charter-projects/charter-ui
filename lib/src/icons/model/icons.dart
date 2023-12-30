import 'package:json_annotation/json_annotation.dart';

import 'icons_map.dart';

part 'icons.g.dart';

@JsonSerializable(
  disallowUnrecognizedKeys: false,
)
final class CharterIconsData {
  CharterIconsData({
    required this.fontFamily,
    required this.icons,
    this.source,
    this.fontPackage,
    this.matchTextDirection = false,
    this.baselineAdjustment = 1,
  });

  factory CharterIconsData.fromJson(Map<String, dynamic> json) =>
      _$CharterIconsDataFromJson(json);

  static Object? _readIconsValue(Map<dynamic, dynamic> json, String key) {
    return {
      'fontFamily': json['fontFamily'],
      'fontPackage': json['fontPackage'],
      'matchTextDirection': json['matchTextDirection'],
      'baselineAdjustment': json['baselineAdjustment'],
      key: json[key],
    };
  }

  final String fontFamily;
  final String? fontPackage;
  final Uri? source;
  final bool matchTextDirection;
  final double baselineAdjustment;

  @JsonKey(readValue: _readIconsValue)
  final IconsMap icons;
}
