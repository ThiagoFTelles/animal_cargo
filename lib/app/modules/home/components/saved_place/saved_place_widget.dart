import 'package:flutter/material.dart';

class SavedPlaceWidget extends StatelessWidget {
  final String name;
  final String address;

  const SavedPlaceWidget({Key key, @required this.name, @required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.location_on,
            color: Colors.black54,
            size: 40,
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),
              Text(address,
                  //TODO: caracteres estão estourando quando o nome da rua é muito grande
                  textScaleFactor: 0.9,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 18.0,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
