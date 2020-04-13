import 'package:animalcargo/app/modules/pass_recovery/pass_recovery_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/pass_recovery/pass_recovery_page.dart';

class PassRecoveryModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PassRecoveryController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PassRecoveryPage()),
      ];

  static Inject get to => Inject<PassRecoveryModule>.of();
}
