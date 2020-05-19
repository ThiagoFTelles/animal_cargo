import 'package:animalcargo/app/modules/home/components/select_mode/select_mode_widget.dart';
import 'package:animalcargo/app/utils/constants.dart';
import 'package:flutter/material.dart';

class SquareButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SelectModeWidget());
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        width: double.infinity,
        color: kGreen,
        child: Text(
          "ESCOLHER MODALIDADE",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
