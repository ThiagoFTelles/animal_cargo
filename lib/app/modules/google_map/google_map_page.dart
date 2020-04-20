import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'google_map_controller.dart';

class GoogleMapPage extends StatefulWidget {
  final String title;
  const GoogleMapPage({Key key, this.title = "GoogleMap"}) : super(key: key);

  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState
    extends ModularState<GoogleMapPage, GoogleMapController> {
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
