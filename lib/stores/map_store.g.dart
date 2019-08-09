// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$MapStore on _MapStore, Store {
  final _$valueAtom = Atom(name: '_MapStore.value');

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

  final _$googleHQAtom = Atom(name: '_MapStore.googleHQ');

  @override
  CameraPosition get googleHQ {
    _$googleHQAtom.context.enforceReadPolicy(_$googleHQAtom);
    _$googleHQAtom.reportObserved();
    return super.googleHQ;
  }

  @override
  set googleHQ(CameraPosition value) {
    _$googleHQAtom.context.conditionallyRunInAction(() {
      super.googleHQ = value;
      _$googleHQAtom.reportChanged();
    }, _$googleHQAtom, name: '${_$googleHQAtom.name}_set');
  }

  final _$mapControllerAtom = Atom(name: '_MapStore.mapController');

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

  final _$_MapStoreActionController = ActionController(name: '_MapStore');

  @override
  void increment(int incrementValue) {
    final _$actionInfo = _$_MapStoreActionController.startAction();
    try {
      return super.increment(incrementValue);
    } finally {
      _$_MapStoreActionController.endAction(_$actionInfo);
    }
  }
}
