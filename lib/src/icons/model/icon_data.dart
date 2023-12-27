import 'package:flutter/widgets.dart';

class BaselineIconData extends IconData {
  const BaselineIconData(
    super.codePoint, {
    super.fontFamily,
    super.fontPackage,
    super.matchTextDirection = false,
    super.fontFamilyFallback,
    this.baselineAdjustment = 1,
  });

  factory BaselineIconData.fromIconData(
    IconData data, {
    double baselineAdjustment = 1,
  }) {
    return BaselineIconData(
      data.codePoint,
      matchTextDirection: data.matchTextDirection,
      fontPackage: data.fontPackage,
      fontFamily: data.fontFamily,
      baselineAdjustment: baselineAdjustment,
      fontFamilyFallback: data.fontFamilyFallback,
    );
  }

  final double baselineAdjustment;
}
