// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapController on _MapControllerBase, Store {
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

  @override
  String toString() {
    final string = 'lat: ${lat.toString()},long: ${long.toString()}';
    return '{$string}';
  }
}
