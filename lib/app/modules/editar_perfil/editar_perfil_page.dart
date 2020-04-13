import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'editar_perfil_controller.dart';

class EditarPerfilPage extends StatefulWidget {
  final String title;
  const EditarPerfilPage({Key key, this.title = "EditarPerfil"})
      : super(key: key);

  @override
  _EditarPerfilPageState createState() => _EditarPerfilPageState();
}

class _EditarPerfilPageState
    extends ModularState<EditarPerfilPage, EditarPerfilController> {
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
