import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import 'icons.dart';
import 'mapper.auto_mappr.dart';
import 'model/icons_map.dart';

@AutoMappr(
  [
    MapType<IconsMap, Icons>(
      constructor: 'fallback',
    ),
  ],
)
class IconMappr extends $IconMappr {}
