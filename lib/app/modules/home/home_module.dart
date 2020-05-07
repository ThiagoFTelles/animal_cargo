import 'package:animalcargo/app/modules/home/components/nav_drawer/nav_drawer_controller.dart';
import 'package:animalcargo/app/modules/home/components/map/map_controller.dart';
import 'package:animalcargo/app/modules/home/home_controller.dart';
import 'package:animalcargo/app/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NavDrawerController()),
        Bind((i) => MapController()),
        Bind((i) {
          return HomeController();
        }),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject.of();
}
