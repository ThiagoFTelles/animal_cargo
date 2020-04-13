import 'package:mobx/mobx.dart';

part 'help_area_controller.g.dart';

class HelpAreaController = _HelpAreaControllerBase with _$HelpAreaController;

abstract class _HelpAreaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
