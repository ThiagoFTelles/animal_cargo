import 'package:animalcargo/app/modules/seus_transportes/seus_transportes_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/seus_transportes/seus_transportes_page.dart';

class SeusTransportesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SeusTransportesController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SeusTransportesPage()),
      ];

  static Inject get to => Inject<SeusTransportesModule>.of();
}
