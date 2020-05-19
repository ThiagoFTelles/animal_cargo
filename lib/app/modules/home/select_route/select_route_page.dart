import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'select_route_controller.dart';

class SelectRoutePage extends StatefulWidget {
  final String title;
  const SelectRoutePage({Key key, this.title = "SelectRoute"})
      : super(key: key);

  @override
  _SelectRoutePageState createState() => _SelectRoutePageState();
}

class _SelectRoutePageState
    extends ModularState<SelectRoutePage, SelectRouteController> {
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
