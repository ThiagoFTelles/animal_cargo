import 'package:animalcargo/app/utils/constants.dart';
import 'package:flutter/material.dart';

class RegisterPlaceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.add_circle_outline,
            color: kTextColor,
            size: 40,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text("Novo Local",
              style: TextStyle(
                color: kTextColor,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
