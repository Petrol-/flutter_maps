import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maps/views/map/map_view.dart';

class ApplicationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          backgroundColor: Colors.white,
        ),
        initialRoute: "home",
        onGenerateRoute: _routes,
        home: MapView());

  }

  Route<dynamic> _routes(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => MapView());
  }
}
