import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'termos_de_uso_controller.dart';

class TermosDeUsoPage extends StatefulWidget {
  final String title;
  const TermosDeUsoPage({Key key, this.title = "TermosDeUso"})
      : super(key: key);

  @override
  _TermosDeUsoPageState createState() => _TermosDeUsoPageState();
}

class _TermosDeUsoPageState
    extends ModularState<TermosDeUsoPage, TermosDeUsoController> {
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
