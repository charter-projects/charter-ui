import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import 'icons.dart';
import 'mapper.auto_mappr.dart';
import 'model/iconsMap.dart';

@AutoMappr(
  [
    MapType<IconsMap, Icons>(
      constructor: 'fallback',
    ),
  ],
)
class IconMappr extends $IconMappr {}
