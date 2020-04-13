import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'sua_carteira_controller.dart';

class SuaCarteiraPage extends StatefulWidget {
  final String title;
  const SuaCarteiraPage({Key key, this.title = "SuaCarteira"})
      : super(key: key);

  @override
  _SuaCarteiraPageState createState() => _SuaCarteiraPageState();
}

class _SuaCarteiraPageState
    extends ModularState<SuaCarteiraPage, SuaCarteiraController> {
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
