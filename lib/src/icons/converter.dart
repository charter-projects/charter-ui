import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

class NullableIconDataConverter
    extends JsonConverter<IconData?, Map<String, dynamic>> {
  const NullableIconDataConverter();

  @override
  IconData? fromJson(Map<String, dynamic> json) {
    final fontFamily = json['_fontFamily'];
    final fontPackage = json['_fontPackage'];
    final matchTextDirection = json['_matchTextDirection'];
    final data = int.tryParse(json['data'].toString());

    if (data is int) {
      return IconData(
        data,
        fontFamily: fontFamily,
        fontPackage: fontPackage,
        matchTextDirection: matchTextDirection ?? false,
      );
    }
    return null;
  }

  @override
  Map<String, dynamic> toJson(IconData? object) {
    throw UnsupportedError('Cannot convert icon to map');
  }
}

class IconDataConverter extends JsonConverter<IconData, Map<String, dynamic>> {
  const IconDataConverter();

  @override
  IconData fromJson(Map<String, dynamic> json) {
    throw UnsupportedError('Cannot convert icon map');
  }

  @override
  Map<String, dynamic> toJson(IconData object) {
    return {
      'codePoint': object.codePoint,
      'fontFamily': object.fontFamily,
      'fontPackage': object.fontPackage,
      'matchTextDirection': object.matchTextDirection,
    };
  }
}
