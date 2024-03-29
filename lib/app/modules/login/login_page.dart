import 'package:animalcargo/app/shared/components/rounded_button.dart';
import 'package:animalcargo/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final loginController = Modular.get<LoginController>();
  bool showSpinner = false;

  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrey,
      body: ModalProgressHUD(
        //TODO: Flutter Slidy e Modular #2 2'15'' = colocar observer aqui e tirar o showSpinner daqui
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Digite seu e-mail',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Digite sua senha',
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                colour: Colors.lightBlueAccent,
                buttonTitle: 'Entrar',
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });

                  try {
                    final user = await loginController.loginWithEmailPassword(
                        email: email, password: password);
                    if (user != null) {
                      Modular.to.pushReplacementNamed('/home');
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              RoundedButton(
                colour: Colors.lightBlueAccent,
                buttonTitle: 'Registrar',
                onPressed: () {
                  Modular.to.pushReplacementNamed('/register');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
