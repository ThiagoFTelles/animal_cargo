import 'package:animalcargo/app/modules/google_map/google_map_controller.dart';
import 'package:mobx/mobx.dart';

part 'map_controller.g.dart';

class MapController = _MapControllerBase with _$MapController;

abstract class _MapControllerBase with Store {
  @observable
  double lat = 45.521563;

  @observable
  double long = -122.677433;
}
