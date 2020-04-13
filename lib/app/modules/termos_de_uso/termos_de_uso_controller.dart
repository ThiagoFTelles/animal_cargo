import 'package:mobx/mobx.dart';

part 'termos_de_uso_controller.g.dart';

class TermosDeUsoController = _TermosDeUsoControllerBase
    with _$TermosDeUsoController;

abstract class _TermosDeUsoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
