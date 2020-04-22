import 'package:animalcargo/app/modules/home/components/map/map_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatelessWidget {
  final mapController = Modular.get<MapController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: <Widget>[
          TextField(
            onChanged: mapController.setSearchText,
            onSubmitted: mapController.searchText.isEmpty
                ? mapController.onSubmitted2()
                //TODO: Entender pq a função moveCamera está dando erro no controller quando iniciada direto.
                : mapController.onSubmitted(),
          ),
          Flexible(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(mapController.lat, mapController.long),
                zoom: mapController.zoom,
              ),
              markers: mapController.markers,
              onMapCreated: mapController.onMapCreated,
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
