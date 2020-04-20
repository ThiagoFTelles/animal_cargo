import 'package:mobx/mobx.dart';

part 'google_map_controller.g.dart';

class GoogleMapController = _GoogleMapControllerBase with _$GoogleMapController;

abstract class _GoogleMapControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
