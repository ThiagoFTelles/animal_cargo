import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'help_area_controller.dart';

class HelpAreaPage extends StatefulWidget {
  final String title;
  const HelpAreaPage({Key key, this.title = "HelpArea"}) : super(key: key);

  @override
  _HelpAreaPageState createState() => _HelpAreaPageState();
}

class _HelpAreaPageState
    extends ModularState<HelpAreaPage, HelpAreaController> {
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
