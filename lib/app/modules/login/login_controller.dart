import 'package:animalcargo/app/shared/auth/auth_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  AuthController auth = Modular.get();

  @observable
  bool loading = false;

//  @action
//  Future loginWithGoogle() async {
//    try {
//      loading = true;
//      await auth.loginWithGoogle();
//      Modular.to.pushReplacementNamed('/home');
//    } catch (e) {
//      loading = false;
//    }
//  }

  @action
  Future loginWithEmailPassword({email, password}) async {
    //TODO: Verificar password.
    try {
      loading = true;
      await auth.loginWithEmailPassword(email: email, password: password);
      Modular.to.pushReplacementNamed('/home');
    } catch (e) {
      loading = false;
      print(e);
    }
  }
}
