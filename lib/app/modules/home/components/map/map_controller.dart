import 'package:animalcargo/app/modules/home/components/map/utils.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
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
    mapController.setMapStyle(Utils.mapStyles);
  }

  @observable
  double lat = 45.521563;
  @observable
  double long = -122.677433;
  @observable
  double zoom = 15.0;
  @observable
  MapType mapType = MapType.normal;

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
    double lat = -20.310918732673137;
    double long = -40.350530818104744;

    LatLng position = LatLng(lat, long);

    mapController.moveCamera(CameraUpdate.newLatLng(position));

    final Marker marker = Marker(
//TODO: Gerar id único
      markerId: MarkerId("1234567"),
      position: position,
      infoWindow: InfoWindow(
        title: "Haras Bavária",
        snippet: "Vitória/ES",
      ),
    );
    markers.add(marker);
    //TODO: Não está atualizando o state automaticamente na hora que adiciona o novo marker
  }

  ////////////////////// GET LOCATION /////////////////////
  @observable
  static LatLng latLngLocation;
  @observable
  LocationData currentLocation;
  @action
  getLocation() async {
    var location = new Location();
    location.onLocationChanged().listen((currentLocation) {
      latLngLocation =
          LatLng(currentLocation.latitude, currentLocation.longitude);
//    loading = false;
    });
  }

//  Call this getLocation() in your initState method
//  Now the latLngLocation we are get now set it on the initialCameraPosition which is built-in method of GoogleMap
//  initialCameraPosition: CameraPosition(
//  target: latLngLocation,
//  zoom: 14.4746,
//  ),
}
