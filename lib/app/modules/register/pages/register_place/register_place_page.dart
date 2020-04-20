import 'package:flutter/material.dart';

class RegisterPlacePage extends StatefulWidget {
  final String title;
  const RegisterPlacePage({Key key, this.title = "RegisterPlace"})
      : super(key: key);

  @override
  _RegisterPlacePageState createState() => _RegisterPlacePageState();
}

class _RegisterPlacePageState extends State<RegisterPlacePage> {
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
