import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pass_recovery_controller.dart';

class PassRecoveryPage extends StatefulWidget {
  final String title;
  const PassRecoveryPage({Key key, this.title = "PassRecovery"})
      : super(key: key);

  @override
  _PassRecoveryPageState createState() => _PassRecoveryPageState();
}

class _PassRecoveryPageState
    extends ModularState<PassRecoveryPage, PassRecoveryController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
