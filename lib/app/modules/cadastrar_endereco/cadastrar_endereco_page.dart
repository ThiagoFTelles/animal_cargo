import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cadastrar_endereco_controller.dart';

class CadastrarEnderecoPage extends StatefulWidget {
  final String title;
  const CadastrarEnderecoPage({Key key, this.title = "CadastrarEndereco"})
      : super(key: key);

  @override
  _CadastrarEnderecoPageState createState() => _CadastrarEnderecoPageState();
}

class _CadastrarEnderecoPageState
    extends ModularState<CadastrarEnderecoPage, CadastrarEnderecoController> {
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
