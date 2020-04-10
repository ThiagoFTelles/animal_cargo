import 'package:animalcargo/app/modules/home/home_controller.dart';
import 'package:animalcargo/app/modules/home/home_page.dart';
import 'package:animalcargo/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:animalcargo/app/shared/repositories/localstorage/local_storage_share.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
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
