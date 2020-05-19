import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  String originLatLng = "";
  @observable
  String destinationLatLng = "";

  @action
  void setOriginLatLng(String latLng) {
    originLatLng = latLng;
  }

  @action
  void setDestinationLatLng(String latLng) {
    destinationLatLng = latLng;
  }
}
