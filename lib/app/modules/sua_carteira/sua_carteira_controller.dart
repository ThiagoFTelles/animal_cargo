import 'package:mobx/mobx.dart';

part 'sua_carteira_controller.g.dart';

class SuaCarteiraController = _SuaCarteiraControllerBase
    with _$SuaCarteiraController;

abstract class _SuaCarteiraControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
