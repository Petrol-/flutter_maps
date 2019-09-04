import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maps/core/services/navigation_service.dart';
import 'package:flutter_maps/router.dart';
import 'package:flutter_maps/views/map/map_page.dart';
import 'package:provider/provider.dart';

class ApplicationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final navigationService = Provider.of<NavigationService>(context);
    
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
        navigatorKey: navigationService.navigatorKey,
        initialRoute: "home",
        onGenerateRoute: Router.generateRoutes,
        home: MapPage());
  }
}
