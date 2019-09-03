import 'package:flutter/material.dart';
import 'package:flutter_maps/core/widgets/AppMainDrawer.dart';
import 'package:flutter_maps/stores/application_store.dart';
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
          final appStore = Provider.of<ApplicationStore>(context);
          return Scaffold(
              drawer: AppMainDrawer(),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.tune),
                onPressed: () { appStore.reportPaused++;},
              ),
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
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: MapTopBar(),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
