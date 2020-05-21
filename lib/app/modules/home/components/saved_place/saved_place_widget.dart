import 'package:animalcargo/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SavedPlaceWidget extends StatelessWidget {
  final String name;
  final String address;
  final LatLng latLng;

  const SavedPlaceWidget(
      {Key key,
      @required this.name,
      @required this.address,
      @required this.latLng})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.location_on,
            color: kIconColor,
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
                    color: kTextColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),
              Text(address,
                  //TODO: caracteres estão estourando quando o nome da rua é muito grande
                  textScaleFactor: 0.9,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 18.0,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
