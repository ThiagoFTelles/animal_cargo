import 'package:animalcargo/app/modules/google_map/google_map_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/google_map/google_map_page.dart';

class GoogleMapModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GoogleMapController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => GoogleMapPage()),
      ];

  static Inject get to => Inject<GoogleMapModule>.of();
}
