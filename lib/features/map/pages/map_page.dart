import 'package:flutter/material.dart';
import 'package:flutter_maps/core/stores/application_store.dart';
import 'package:flutter_maps/core/widgets/AppMainDrawer.dart';
import 'package:flutter_maps/features/map/stores/map_store.dart';
import 'package:flutter_maps/features/map/widgets/filter_bottom_sheet.dart';
import 'package:flutter_maps/features/map/widgets/filter_bottom_sheet_button.dart';
import 'package:flutter_maps/features/map/widgets/map_top_bar.dart';
import 'package:flutter_maps/routes.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<MapStore>(
      builder: (_) => MapStore(),
      child: Builder(
        builder: (context) {
          final mapStore = Provider.of<MapStore>(context);
          final appStore = Provider.of<ApplicationStore>(context);
          return Scaffold(
              drawer: AppMainDrawer(
                currentRouteName: Routes.home,
              ),
              floatingActionButton: FilterBottomSheetButton(
                icon: Icons.tune,
                bottomSheet: FilterBottomSheet(),
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
