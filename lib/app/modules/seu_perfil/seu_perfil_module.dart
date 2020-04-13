import 'package:animalcargo/app/modules/seu_perfil/seu_perfil_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/seu_perfil/seu_perfil_page.dart';

class SeuPerfilModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SeuPerfilController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SeuPerfilPage()),
      ];

  static Inject get to => Inject<SeuPerfilModule>.of();
}
