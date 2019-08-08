import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starter/stores/application_store.dart';
import 'package:provider/provider.dart';

import 'map_view.dart';

class ApplicationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appStore = Provider.of<ApplicationStore>(context);
    return MaterialApp(
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        builder: (context, child) {
          return Scaffold(
            // appBar: AppBar(
            //   title: Observer(
            //     builder: (_) => Text("${appStore.title}")),
            //),
            body: child,
          );
        },
        home: MapView()
        // onGenerateRoute: _routes,

        );
  }

  Route _routes(RouteSettings settings) {
    if (settings.isInitialRoute) {
      return MaterialPageRoute(builder: (context) {
        return MapView();
      });
    }
  }
}
