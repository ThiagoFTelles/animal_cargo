import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cadastrar_cartao_controller.dart';

class CadastrarCartaoPage extends StatefulWidget {
  final String title;
  const CadastrarCartaoPage({Key key, this.title = "CadastrarCartao"})
      : super(key: key);

  @override
  _CadastrarCartaoPageState createState() => _CadastrarCartaoPageState();
}

class _CadastrarCartaoPageState
    extends ModularState<CadastrarCartaoPage, CadastrarCartaoController> {
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
