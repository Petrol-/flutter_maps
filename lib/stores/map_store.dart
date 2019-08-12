import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'map_store.g.dart';

class MapStore = _MapStore with _$MapStore;

abstract class _MapStore with Store {
  Completer<BitmapDescriptor> _lightningMarker = Completer();
  _MapStore() {
    BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(100, 100)),
            "lib/assets/markers/marker_blue.PNG")
        .then((BitmapDescriptor desc) => _lightningMarker.complete(desc));
  }

  double get lightBlueHue => 204;

  @observable
  CameraPosition parisCameraPosition = CameraPosition(
    target: LatLng(48.864716, 2.349014),
    zoom: 11.4746,
  );

  @observable
  ObservableList<Marker> markers = ObservableList<Marker>();

  @observable
  GoogleMapController mapController;

  @action
  Future addMarker(LatLng position) async {
    final marker = await _createMarker(position);
    markers.add(marker);
  }

  @action
  void removeMarker(MarkerId markerId) {
    markers.removeWhere((marker)=>marker.markerId == markerId);
  }

  Future<Marker> _createMarker(LatLng position) async {
    final id = MarkerId(position.toString());
    return Marker(
      markerId: id ,
      position: position,
      consumeTapEvents: true,
      icon: await _lightningMarker.future,
      onTap: () => removeMarker(id),
      infoWindow: InfoWindow(
          title: "Coordinates",
          snippet: '${position.latitude} ${position.longitude}'),
    );
  }
}
