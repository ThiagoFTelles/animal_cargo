import 'package:animalcargo/app/modules/editar_perfil/editar_perfil_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/editar_perfil/editar_perfil_page.dart';

class EditarPerfilModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EditarPerfilController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => EditarPerfilPage()),
      ];

  static Inject get to => Inject<EditarPerfilModule>.of();
}
