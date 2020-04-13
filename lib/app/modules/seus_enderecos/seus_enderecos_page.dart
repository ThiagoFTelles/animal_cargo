import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'seus_enderecos_controller.dart';

class SeusEnderecosPage extends StatefulWidget {
  final String title;
  const SeusEnderecosPage({Key key, this.title = "SeusEnderecos"})
      : super(key: key);

  @override
  _SeusEnderecosPageState createState() => _SeusEnderecosPageState();
}

class _SeusEnderecosPageState
    extends ModularState<SeusEnderecosPage, SeusEnderecosController> {
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
