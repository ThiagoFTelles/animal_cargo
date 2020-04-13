import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'seu_perfil_controller.dart';

class SeuPerfilPage extends StatefulWidget {
  final String title;
  const SeuPerfilPage({Key key, this.title = "SeuPerfil"}) : super(key: key);

  @override
  _SeuPerfilPageState createState() => _SeuPerfilPageState();
}

class _SeuPerfilPageState
    extends ModularState<SeuPerfilPage, SeuPerfilController> {
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
