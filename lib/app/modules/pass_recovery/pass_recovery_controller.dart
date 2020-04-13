import 'package:mobx/mobx.dart';

part 'pass_recovery_controller.g.dart';

class PassRecoveryController = _PassRecoveryControllerBase
    with _$PassRecoveryController;

abstract class _PassRecoveryControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
