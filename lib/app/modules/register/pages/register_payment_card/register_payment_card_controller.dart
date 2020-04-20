import 'package:mobx/mobx.dart';

part 'register_payment_card_controller.g.dart';

class RegisterPaymentCardController = _RegisterPaymentCardControllerBase
    with _$RegisterPaymentCardController;

abstract class _RegisterPaymentCardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
