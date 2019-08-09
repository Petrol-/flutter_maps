import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_maps/stores/map_store.dart';
import 'package:flutter_maps/views/map_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<MapStore>(
      builder: (_) => MapStore(),
      child: Builder(
        builder: (context) {
          final mapStore = Provider.of<MapStore>(context);
          return Scaffold(
           
              body: Observer(
                  builder: (_) =>
                      GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: mapStore.googleHQ,
                        onMapCreated: (GoogleMapController controller){
                          mapStore.mapController = controller;
                        },
                      )
                      ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.blue,
                child: Icon(Icons.add),
                onPressed: () => mapStore.increment(1),
              )
              );
        },
      ),
    );
  }
}
