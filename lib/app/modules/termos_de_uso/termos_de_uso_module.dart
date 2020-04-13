import 'package:animalcargo/app/modules/termos_de_uso/termos_de_uso_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/termos_de_uso/termos_de_uso_page.dart';

class TermosDeUsoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TermosDeUsoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => TermosDeUsoPage()),
      ];

  static Inject get to => Inject<TermosDeUsoModule>.of();
}
