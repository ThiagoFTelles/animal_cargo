import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'seus_transportes_controller.dart';

class SeusTransportesPage extends StatefulWidget {
  final String title;
  const SeusTransportesPage({Key key, this.title = "SeusTransportes"})
      : super(key: key);

  @override
  _SeusTransportesPageState createState() => _SeusTransportesPageState();
}

class _SeusTransportesPageState
    extends ModularState<SeusTransportesPage, SeusTransportesController> {
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
