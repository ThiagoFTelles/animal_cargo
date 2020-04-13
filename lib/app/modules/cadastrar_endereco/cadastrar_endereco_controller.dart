import 'package:mobx/mobx.dart';

part 'cadastrar_endereco_controller.g.dart';

class CadastrarEnderecoController = _CadastrarEnderecoControllerBase
    with _$CadastrarEnderecoController;

abstract class _CadastrarEnderecoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
