import 'package:animalcargo/app/app_controller.dart';
import 'package:animalcargo/app/app_widget.dart';
import 'package:animalcargo/app/modules/home/home_module.dart';
import 'package:animalcargo/app/pages/splash/splash_page.dart';
import 'package:animalcargo/app/shared/auth/auth_controller.dart';
import 'package:animalcargo/app/shared/auth/repositories/auth_repository.dart';
import 'package:animalcargo/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:animalcargo/app/shared/repositories/localstorage/local_storage_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/login/login_module.dart';
import 'shared/auth/repositories/auth_repository_interface.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        //  Bind((i) => LocalStorageHive()),
        Bind<ILocalStorage>((i) => LocalStorageShared()),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
        Router('/login',
            module: LoginModule(), transition: TransitionType.noTransition),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject.of();
}
