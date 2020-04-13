import 'package:animalcargo/app/modules/cadastrar_endereco/cadastrar_endereco_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/cadastrar_endereco/cadastrar_endereco_page.dart';

class CadastrarEnderecoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CadastrarEnderecoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => CadastrarEnderecoPage()),
      ];

  static Inject get to => Inject<CadastrarEnderecoModule>.of();
}
