import 'package:mobx/mobx.dart';

part 'cadastrar_cartao_controller.g.dart';

class CadastrarCartaoController = _CadastrarCartaoControllerBase
    with _$CadastrarCartaoController;

abstract class _CadastrarCartaoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
