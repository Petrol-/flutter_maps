import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starter/stores/map_store.dart';
import 'package:provider/provider.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<MapStore>(
      builder: (_)=>MapStore(),
      child: Builder(
        builder: (context) {
          final mapStore = Provider.of<MapStore>(context);
          return Scaffold(
              body: Container(
                child: Center(
                    child: Observer(
                  builder: (_) => Text("MapView is ${mapStore.value}"),
                )),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.blue,
                child: Icon(Icons.add),
                onPressed: () => mapStore.increment(1),
              ));
        },
      ),
    );
  }
}
