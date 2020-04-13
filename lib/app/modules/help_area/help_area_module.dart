import 'package:animalcargo/app/modules/help_area/help_area_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:animalcargo/app/modules/help_area/help_area_page.dart';

class HelpAreaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HelpAreaController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HelpAreaPage()),
      ];

  static Inject get to => Inject<HelpAreaModule>.of();
}
