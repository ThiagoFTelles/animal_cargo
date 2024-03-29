import 'package:animalcargo/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  AuthStatus status =
      AuthStatus.loading; //status inicial antes de verificar o login

  @observable
  FirebaseUser user;

  @action
  setUser(FirebaseUser value) {
    user = value;
    status = user == null ? AuthStatus.logoff : AuthStatus.login;
  }

  _AuthControllerBase() {
    _authRepository.getUser().then(setUser).catchError((e) {
      print('ERROR:');
      print(e);
    });
  }

  @action
  Future loginWithEmailPassword({email, password}) async {
    user = await _authRepository.getEmailPasswordLogin(
        email: email, password: password);
  }

//  @action
//  Future loginWithGoogle() async {
//    user = await _authRepository.getGoogleLogin();
//  }

  Future logout() {
    return _authRepository.getLogout();
  }
}

enum AuthStatus { loading, login, logoff }
