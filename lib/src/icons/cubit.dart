import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'icons.dart';
import 'mapper.dart';
import 'model/icons.dart';
import 'model/iconsMap.dart';

class CharterIconCubit extends Cubit<Icons> {
  CharterIconCubit() : super(Icons.defaults);

  final mapper = IconMappr();

  Future<void> loadMap(Map<String, dynamic> json) async {
    final data = CharterIconsData.fromJson(json);
    await FontLoader(data.fontFamily).load();

    // TODO(Sean): read from source
    emit(mapper.convert<IconsMap, Icons>(data.icons));
  }

  Future<void> loadData(CharterIconsData data) async {
    await FontLoader(data.fontFamily).load();

    // TODO(Sean): read from source
    emit(mapper.convert<IconsMap, Icons>(data.icons));
  }

  void reset() => emit(Icons.defaults);
}

extension IconBuildContext on BuildContext {
  CharterIconCubit get iconCubit => read<CharterIconCubit>();

  CharterIconCubit get watchIconCubit => watch<CharterIconCubit>();

  Icons get icon => read<CharterIconCubit>().state;

  Icons get watchIcon => watch<CharterIconCubit>().state;
}
