import 'package:animalcargo/app/modules/cadastrar_cartao/cadastrar_cartao_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/cadastrar_cartao/cadastrar_cartao_page.dart';

class CadastrarCartaoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CadastrarCartaoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CadastrarCartaoPage()),
      ];

  static Inject get to => Inject<CadastrarCartaoModule>.of();
}
