import 'package:mobx/mobx.dart';

part 'register_place_controller.g.dart';

class RegisterPlaceController = _RegisterPlaceControllerBase
    with _$RegisterPlaceController;

abstract class _RegisterPlaceControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
