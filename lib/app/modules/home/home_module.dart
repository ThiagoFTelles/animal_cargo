import 'package:animalcargo/app/modules/home/components/map/map_controller.dart';
import 'package:animalcargo/app/modules/home/components/nav_drawer/nav_drawer_controller.dart';
import 'package:animalcargo/app/modules/home/components/register_place/register_place_controller.dart';
import 'package:animalcargo/app/modules/home/components/saved_place/saved_place_controller.dart';
import 'package:animalcargo/app/modules/home/components/select_mode/select_mode_controller.dart';
import 'package:animalcargo/app/modules/home/components/square_button/square_button_controller.dart';
import 'package:animalcargo/app/modules/home/home_controller.dart';
import 'package:animalcargo/app/modules/home/home_page.dart';
import 'package:animalcargo/app/modules/register/pages/register_place/register_place_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterPlaceController()),
        Bind((i) => SquareButtonController()),
        Bind((i) => SavedPlaceController()),
        Bind((i) => SelectModeController()),
        Bind((i) => NavDrawerController()),
        Bind((i) => MapController()),
        Bind((i) {
          return HomeController();
        }),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router("/register_place",
            child: (_, args) => RegisterPlacePage(),
            transition: TransitionType.rightToLeft),
      ];

  static Inject get to => Inject.of();
}
