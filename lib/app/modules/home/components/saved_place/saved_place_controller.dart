import 'package:mobx/mobx.dart';

part 'saved_place_controller.g.dart';

class SavedPlaceController = _SavedPlaceControllerBase
    with _$SavedPlaceController;

abstract class _SavedPlaceControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
