import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lucide_icons/lucide_icons.dart';

import 'converter.dart';
import 'model/icon_data.dart';

part 'icons.g.dart';

@JsonSerializable(
  converters: [
    IconDataConverter(),
  ],
)
class Icons extends Equatable {
  const Icons({
    required this.windowMaximize,
    required this.windowRestore,
    required this.windowMinimize,
    required this.windowClose,
  });

  factory Icons.fallback({
    IconData? windowClose,
    IconData? windowRestore,
    IconData? windowMinimize,
    IconData? windowMaximize,
  }) =>
      Icons(
        windowClose: windowClose ?? defaults.windowClose,
        windowRestore: windowRestore ?? defaults.windowRestore,
        windowMinimize: windowMinimize ?? defaults.windowMinimize,
        windowMaximize: windowMaximize ?? defaults.windowMaximize,
      );

  static const _baselineAdjustment = 0.85;

  static final Icons defaults = Icons(
    windowClose: BaselineIconData.fromIconData(
      LucideIcons.x,
      baselineAdjustment: _baselineAdjustment,
    ),
    windowMaximize: BaselineIconData.fromIconData(
      LucideIcons.square,
      baselineAdjustment: _baselineAdjustment,
    ),
    windowMinimize: BaselineIconData.fromIconData(
      LucideIcons.minus,
      baselineAdjustment: _baselineAdjustment,
    ),
    windowRestore: BaselineIconData.fromIconData(
      LucideIcons.diamond,
      baselineAdjustment: _baselineAdjustment,
    ),
  );

  final IconData windowClose;
  final IconData windowMaximize;
  final IconData windowRestore;
  final IconData windowMinimize;

  @override
  List<Object?> get props => [
        windowClose,
        windowMaximize,
        windowMinimize,
        windowRestore,
      ];

  Map<String, dynamic> toJson() => _$IconsToJson(this);

  @override
  String toString() {
    return const JsonEncoder().convert(toJson());
  }
}
