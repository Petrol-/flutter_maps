import 'package:flutter/material.dart';
import 'package:flutter_maps/stores/map_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'map_top_bar.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<MapStore>(
      builder: (_) => MapStore(),
      child: Builder(
        builder: (context) {
          final mapStore = Provider.of<MapStore>(context);
          return Scaffold(
            body: Stack(
              children: [
                Observer(
                  builder: (_) => GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: mapStore.parisCameraPosition,
                    onMapCreated: (GoogleMapController controller) {
                      mapStore.mapController = controller;
                    },
                    markers: Set<Marker>.from(mapStore.markers),
                    onLongPress: (LatLng position) async =>
                        await mapStore.addMarker(position),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: new MapTopBar(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
