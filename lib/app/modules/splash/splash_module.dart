import 'package:animalcargo/app/modules/splash/splash_controller.dart';
import 'package:animalcargo/app/modules/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => SplashPage(),
            transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<SplashModule>.of();
}
