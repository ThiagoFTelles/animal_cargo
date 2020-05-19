import 'package:animalcargo/app/modules/home/select_route/select_route_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/home/select_route/select_route_page.dart';

class SelectRouteModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SelectRouteController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SelectRoutePage()),
      ];

  static Inject get to => Inject<SelectRouteModule>.of();
}
