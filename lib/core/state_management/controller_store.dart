import 'package:flutter_theme_x/core/state_management/controller.dart';

class FTxControllerStore {
  static final Map<String, FTxController> _controllers = {};

  T putOrFind<T extends FTxController>(T controller,
      {String? tag, bool save = true}) {
    String key = tag ?? controller.getTag();

    if (_controllers.containsKey(key)) {
      T controller = _controllers[key] as T;
      controller.save = save;
      return controller;
    } else {
      return FTxControllerStore().put(controller, tag: tag, save: save);
    }
  }

  T put<T extends FTxController>(T controller,
      {String? tag, bool save = true}) {
    String key = tag ?? controller.getTag();

    _controllers[key] = controller;
    controller.save = save;

    return controller;
  }

  void delete<T extends FTxController>(T controller, {String? tag}) {
    String key = tag ?? controller.getTag();

    _controllers.remove(key);
  }
}
