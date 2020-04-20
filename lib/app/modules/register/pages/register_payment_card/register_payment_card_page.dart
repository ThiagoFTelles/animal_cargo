import 'package:flutter/material.dart';

class RegisterPaymentCardPage extends StatefulWidget {
  final String title;
  const RegisterPaymentCardPage({Key key, this.title = "RegisterPaymentCard"})
      : super(key: key);

  @override
  _RegisterPaymentCardPageState createState() =>
      _RegisterPaymentCardPageState();
}

class _RegisterPaymentCardPageState extends State<RegisterPaymentCardPage> {
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
