import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'map_store.g.dart';

class MapStore = _MapStore with _$MapStore;

abstract class _MapStore with Store {
  _MapStore() {
    print("init");
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
  void addMarker(LatLng position) {
    final marker = _createMarker(position);
    markers.add(marker);
  }

  Marker _createMarker(LatLng position) {
    return Marker(
      markerId: MarkerId(position.toString()),
      position: position,
      icon: BitmapDescriptor.defaultMarkerWithHue(lightBlueHue),
      infoWindow: InfoWindow(
          title: "Coordinates",
          snippet: '${position.latitude} ${position.longitude}'),
    );
  }

}
