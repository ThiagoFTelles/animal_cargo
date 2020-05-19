import 'package:mobx/mobx.dart';

part 'square_button_controller.g.dart';

class SquareButtonController = _SquareButtonControllerBase
    with _$SquareButtonController;

abstract class _SquareButtonControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
