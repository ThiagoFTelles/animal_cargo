// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapController on _MapControllerBase, Store {
  final _$searchTextAtom = Atom(name: '_MapControllerBase.searchText');

  @override
  String get searchText {
    _$searchTextAtom.context.enforceReadPolicy(_$searchTextAtom);
    _$searchTextAtom.reportObserved();
    return super.searchText;
  }

  @override
  set searchText(String value) {
    _$searchTextAtom.context.conditionallyRunInAction(() {
      super.searchText = value;
      _$searchTextAtom.reportChanged();
    }, _$searchTextAtom, name: '${_$searchTextAtom.name}_set');
  }

  final _$mapControllerAtom = Atom(name: '_MapControllerBase.mapController');

  @override
  GoogleMapController get mapController {
    _$mapControllerAtom.context.enforceReadPolicy(_$mapControllerAtom);
    _$mapControllerAtom.reportObserved();
    return super.mapController;
  }

  @override
  set mapController(GoogleMapController value) {
    _$mapControllerAtom.context.conditionallyRunInAction(() {
      super.mapController = value;
      _$mapControllerAtom.reportChanged();
    }, _$mapControllerAtom, name: '${_$mapControllerAtom.name}_set');
  }

  final _$latAtom = Atom(name: '_MapControllerBase.lat');

  @override
  double get lat {
    _$latAtom.context.enforceReadPolicy(_$latAtom);
    _$latAtom.reportObserved();
    return super.lat;
  }

  @override
  set lat(double value) {
    _$latAtom.context.conditionallyRunInAction(() {
      super.lat = value;
      _$latAtom.reportChanged();
    }, _$latAtom, name: '${_$latAtom.name}_set');
  }

  final _$longAtom = Atom(name: '_MapControllerBase.long');

  @override
  double get long {
    _$longAtom.context.enforceReadPolicy(_$longAtom);
    _$longAtom.reportObserved();
    return super.long;
  }

  @override
  set long(double value) {
    _$longAtom.context.conditionallyRunInAction(() {
      super.long = value;
      _$longAtom.reportChanged();
    }, _$longAtom, name: '${_$longAtom.name}_set');
  }

  final _$zoomAtom = Atom(name: '_MapControllerBase.zoom');

  @override
  double get zoom {
    _$zoomAtom.context.enforceReadPolicy(_$zoomAtom);
    _$zoomAtom.reportObserved();
    return super.zoom;
  }

  @override
  set zoom(double value) {
    _$zoomAtom.context.conditionallyRunInAction(() {
      super.zoom = value;
      _$zoomAtom.reportChanged();
    }, _$zoomAtom, name: '${_$zoomAtom.name}_set');
  }

  final _$mapTypeAtom = Atom(name: '_MapControllerBase.mapType');

  @override
  MapType get mapType {
    _$mapTypeAtom.context.enforceReadPolicy(_$mapTypeAtom);
    _$mapTypeAtom.reportObserved();
    return super.mapType;
  }

  @override
  set mapType(MapType value) {
    _$mapTypeAtom.context.conditionallyRunInAction(() {
      super.mapType = value;
      _$mapTypeAtom.reportChanged();
    }, _$mapTypeAtom, name: '${_$mapTypeAtom.name}_set');
  }

  final _$markersAtom = Atom(name: '_MapControllerBase.markers');

  @override
  Set<Marker> get markers {
    _$markersAtom.context.enforceReadPolicy(_$markersAtom);
    _$markersAtom.reportObserved();
    return super.markers;
  }

  @override
  set markers(Set<Marker> value) {
    _$markersAtom.context.conditionallyRunInAction(() {
      super.markers = value;
      _$markersAtom.reportChanged();
    }, _$markersAtom, name: '${_$markersAtom.name}_set');
  }

  final _$_MapControllerBaseActionController =
      ActionController(name: '_MapControllerBase');

  @override
  dynamic setSearchText(String value) {
    final _$actionInfo = _$_MapControllerBaseActionController.startAction();
    try {
      return super.setSearchText(value);
    } finally {
      _$_MapControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onMapCreated(GoogleMapController googleMapController) {
    final _$actionInfo = _$_MapControllerBaseActionController.startAction();
    try {
      return super.onMapCreated(googleMapController);
    } finally {
      _$_MapControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLatLong(double newLat, double newLong) {
    final _$actionInfo = _$_MapControllerBaseActionController.startAction();
    try {
      return super.setLatLong(newLat, newLong);
    } finally {
      _$_MapControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onSubmitted() {
    final _$actionInfo = _$_MapControllerBaseActionController.startAction();
    try {
      return super.onSubmitted();
    } finally {
      _$_MapControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'searchText: ${searchText.toString()},mapController: ${mapController.toString()},lat: ${lat.toString()},long: ${long.toString()},zoom: ${zoom.toString()},mapType: ${mapType.toString()},markers: ${markers.toString()}';
    return '{$string}';
  }
}
