import 'package:animalcargo/app/modules/sua_carteira/sua_carteira_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/sua_carteira/sua_carteira_page.dart';

class SuaCarteiraModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SuaCarteiraController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SuaCarteiraPage()),
      ];

  static Inject get to => Inject<SuaCarteiraModule>.of();
}
