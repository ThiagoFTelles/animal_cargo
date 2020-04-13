// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pass_recovery_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PassRecoveryController on _PassRecoveryControllerBase, Store {
  final _$valueAtom = Atom(name: '_PassRecoveryControllerBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_PassRecoveryControllerBaseActionController =
      ActionController(name: '_PassRecoveryControllerBase');

  @override
  void increment() {
    final _$actionInfo =
        _$_PassRecoveryControllerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_PassRecoveryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'value: ${value.toString()}';
    return '{$string}';
  }
}
