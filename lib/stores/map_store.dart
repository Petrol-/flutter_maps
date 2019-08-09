import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

part 'map_store.g.dart';

class MapStore = _MapStore with _$MapStore;


abstract class _MapStore with Store {
  _MapStore(){
    print("init");
  }
  @observable
  int value = 0;

@observable
 CameraPosition googleHQ = CameraPosition(
    target: LatLng(45.521563, -122.677433),
    zoom: 11.4746,
  );

  @observable GoogleMapController mapController;
  
  @action
  void increment(int incrementValue) {
    value += incrementValue;
  }
}
