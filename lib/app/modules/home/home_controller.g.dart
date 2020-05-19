// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$originLatLngAtom = Atom(name: '_HomeBase.originLatLng');

  @override
  String get originLatLng {
    _$originLatLngAtom.context.enforceReadPolicy(_$originLatLngAtom);
    _$originLatLngAtom.reportObserved();
    return super.originLatLng;
  }

  @override
  set originLatLng(String value) {
    _$originLatLngAtom.context.conditionallyRunInAction(() {
      super.originLatLng = value;
      _$originLatLngAtom.reportChanged();
    }, _$originLatLngAtom, name: '${_$originLatLngAtom.name}_set');
  }

  final _$destinationLatLngAtom = Atom(name: '_HomeBase.destinationLatLng');

  @override
  String get destinationLatLng {
    _$destinationLatLngAtom.context.enforceReadPolicy(_$destinationLatLngAtom);
    _$destinationLatLngAtom.reportObserved();
    return super.destinationLatLng;
  }

  @override
  set destinationLatLng(String value) {
    _$destinationLatLngAtom.context.conditionallyRunInAction(() {
      super.destinationLatLng = value;
      _$destinationLatLngAtom.reportChanged();
    }, _$destinationLatLngAtom, name: '${_$destinationLatLngAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void setOriginLatLng(String latLng) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setOriginLatLng(latLng);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDestinationLatLng(String latLng) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setDestinationLatLng(latLng);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'originLatLng: ${originLatLng.toString()},destinationLatLng: ${destinationLatLng.toString()}';
    return '{$string}';
  }
}
