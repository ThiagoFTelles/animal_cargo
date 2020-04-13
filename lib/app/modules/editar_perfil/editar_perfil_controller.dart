import 'package:mobx/mobx.dart';

part 'editar_perfil_controller.g.dart';

class EditarPerfilController = _EditarPerfilControllerBase
    with _$EditarPerfilController;

abstract class _EditarPerfilControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
