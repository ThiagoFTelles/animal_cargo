import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'map_controller.g.dart';

class MapController = _MapControllerBase with _$MapController;

abstract class _MapControllerBase with Store {
  @observable
  String searchText = "";
  @action
  setSearchText(String value) => searchText = value;

  @observable
  GoogleMapController mapController;
  @action
  void onMapCreated(GoogleMapController googleMapController) {
    mapController = googleMapController;
  }

  @observable
  double lat = 45.521563;
  @observable
  double long = -122.677433;
  @observable
  double zoom = 11.0;

  @action
  setLatLong(double newLat, double newLong) {
    lat = newLat;
    long = newLong;
  }

  @observable
  Set<Marker> markers = Set<Marker>();

  @action
  onSubmitted() {
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
    markers.add(marker);
  }

  @action
  onSubmitted2() {
    //TODO: pegar a lat e long pesquisando o texto no google
    double lat = -22.7101448;
    double long = -48.0747667;

    LatLng position = LatLng(lat, long);

    final Marker marker = Marker(
      //TODO: Gerar id único
      markerId: MarkerId("1234567"),
      position: position,
      infoWindow: InfoWindow(
        title: "Casa do Balta",
        snippet: "Piracicaba/SP",
      ),
    );
    markers.add(marker);
  }
}
