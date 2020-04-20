import 'package:animalcargo/app/modules/home/components/map/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatelessWidget {
  final controller = Modular.get<MapController>();

  GoogleMapController mapController;
  Set<Marker> markers = Set<Marker>();

  void _onMapCreated(GoogleMapController googleMapController) {
    mapController = googleMapController;
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: <Widget>[
          TextField(
            onSubmitted: (val) {
//TODO: pegar a lat e long pesquisando o texto no google
              double lat = -22.7101448;
              double long = -48.0747667;

              LatLng position = LatLng(lat, long);

              mapController.moveCamera(CameraUpdate.newLatLng(position));

              final Marker marker = Marker(
//TODO: Gerar id único
                markerId: MarkerId("1234567"),
                position: position,
                infoWindow: InfoWindow(
                  title: "Casa do Balta",
                  snippet: "Piracicaba/SP",
                ),
              );

              //TODO: alterar isso no controller e tirar o setState daqui
//              setState(() {
              markers.add(marker);
//              });
            },
          ),
          Flexible(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(controller.lat, controller.long),
                zoom: 11.0,
              ),
              markers: markers,
              onMapCreated: _onMapCreated,
              onCameraMove: (data) {
                print(data);
              },
              onTap: (position) {
                print(position);
              },
            ),
          ),
        ],
      );
    });
  }
}
