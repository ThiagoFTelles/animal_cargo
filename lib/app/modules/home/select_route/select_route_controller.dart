import 'package:mobx/mobx.dart';

part 'select_route_controller.g.dart';

class SelectRouteController = _SelectRouteControllerBase
    with _$SelectRouteController;

abstract class _SelectRouteControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
