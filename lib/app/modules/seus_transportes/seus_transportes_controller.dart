import 'package:mobx/mobx.dart';

part 'seus_transportes_controller.g.dart';

class SeusTransportesController = _SeusTransportesControllerBase
    with _$SeusTransportesController;

abstract class _SeusTransportesControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
