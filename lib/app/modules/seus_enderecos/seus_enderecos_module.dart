import 'package:animalcargo/app/modules/seus_enderecos/seus_enderecos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/seus_enderecos/seus_enderecos_page.dart';

class SeusEnderecosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SeusEnderecosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SeusEnderecosPage()),
      ];

  static Inject get to => Inject<SeusEnderecosModule>.of();
}
