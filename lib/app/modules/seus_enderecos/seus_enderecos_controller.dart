import 'package:mobx/mobx.dart';

part 'seus_enderecos_controller.g.dart';

class SeusEnderecosController = _SeusEnderecosControllerBase
    with _$SeusEnderecosController;

abstract class _SeusEnderecosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
