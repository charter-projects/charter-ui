import 'package:flutter/widgets.dart' as w;
import 'package:flutter/widgets.dart' hide Icon;

import '../model/icon_data.dart';

class Icon extends w.Icon {
  const Icon(
    super.icon, {
    super.key,
    super.size,
    super.fill,
    super.weight,
    super.grade,
    super.opticalSize,
    super.color,
    super.shadows,
    super.semanticLabel,
    super.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    final temp = icon;
    if (temp is BaselineIconData && size is double) {
      return Baseline(
        baselineType: TextBaseline.ideographic,
        baseline: temp.baselineAdjustment * size!,
        child: super.build(context),
      );
    }
    return super.build(context);
  }
}
