import 'package:mobx/mobx.dart';

part 'seu_perfil_controller.g.dart';

class SeuPerfilController = _SeuPerfilControllerBase with _$SeuPerfilController;

abstract class _SeuPerfilControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
