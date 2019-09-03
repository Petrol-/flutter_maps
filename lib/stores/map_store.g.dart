// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$MapStore on _MapStore, Store {
  final _$parisCameraPositionAtom = Atom(name: '_MapStore.parisCameraPosition');

  @override
  CameraPosition get parisCameraPosition {
    _$parisCameraPositionAtom.context
        .enforceReadPolicy(_$parisCameraPositionAtom);
    _$parisCameraPositionAtom.reportObserved();
    return super.parisCameraPosition;
  }

  @override
  set parisCameraPosition(CameraPosition value) {
    _$parisCameraPositionAtom.context.conditionallyRunInAction(() {
      super.parisCameraPosition = value;
      _$parisCameraPositionAtom.reportChanged();
    }, _$parisCameraPositionAtom,
        name: '${_$parisCameraPositionAtom.name}_set');
  }

  final _$markersAtom = Atom(name: '_MapStore.markers');

  @override
  ObservableList<Marker> get markers {
    _$markersAtom.context.enforceReadPolicy(_$markersAtom);
    _$markersAtom.reportObserved();
    return super.markers;
  }

  @override
  set markers(ObservableList<Marker> value) {
    _$markersAtom.context.conditionallyRunInAction(() {
      super.markers = value;
      _$markersAtom.reportChanged();
    }, _$markersAtom, name: '${_$markersAtom.name}_set');
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

  final _$addMarkerAsyncAction = AsyncAction('addMarker');

  @override
  Future<dynamic> addMarker(LatLng position) {
    return _$addMarkerAsyncAction.run(() => super.addMarker(position));
  }

  final _$_MapStoreActionController = ActionController(name: '_MapStore');

  @override
  void removeMarker(MarkerId markerId) {
    final _$actionInfo = _$_MapStoreActionController.startAction();
    try {
      return super.removeMarker(markerId);
    } finally {
      _$_MapStoreActionController.endAction(_$actionInfo);
    }
  }
}
