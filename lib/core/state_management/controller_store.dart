import 'package:flutter_theme_x/core/state_management/controller.dart';

class FxControllerStore {
  static final Map<String, FxController> _controllers = {};

  T putOrFind<T extends FxController>(T controller,
      {String? tag, bool save = true}) {
    String key = tag ?? controller.getTag();

    if (_controllers.containsKey(key)) {
      T controller = _controllers[key] as T;
      controller.save = save;
      return controller;
    } else {
      return FxControllerStore().put(controller, tag: tag, save: save);
    }
  }

  T put<T extends FxController>(T controller, {String? tag, bool save = true}) {
    String key = tag ?? controller.getTag();

    _controllers[key] = controller;
    controller.save = save;

    return controller;
  }

  void delete<T extends FxController>(T controller, {String? tag}) {
    String key = tag ?? controller.getTag();

    _controllers.remove(key);
  }
}
