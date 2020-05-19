import 'package:mobx/mobx.dart';

part 'select_mode_controller.g.dart';

class SelectModeController = _SelectModeControllerBase
    with _$SelectModeController;

abstract class _SelectModeControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
