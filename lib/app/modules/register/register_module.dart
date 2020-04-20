import 'package:animalcargo/app/modules/register/pages/register_page.dart';
import 'package:animalcargo/app/modules/register/pages/register_payment_card/register_payment_card_controller.dart';
import 'package:animalcargo/app/modules/register/pages/register_payment_card/register_payment_card_page.dart';
import 'package:animalcargo/app/modules/register/pages/register_place/register_place_controller.dart';
import 'package:animalcargo/app/modules/register/pages/register_place/register_place_page.dart';
import 'package:animalcargo/app/modules/register/register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterPlaceController()),
        Bind((i) => RegisterPaymentCardController()),
        Bind((i) => RegisterController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RegisterPage()),
        Router('/place', child: (_, args) => RegisterPlacePage()),
        Router('/card', child: (_, args) => RegisterPaymentCardPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
