import 'package:flutter/material.dart';
import 'package:flutter_maps/views/map/map_page.dart';

class Router {

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    
    if (settings.isInitialRoute)
      return MaterialPageRoute(builder: (_) => MapPage());

    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (_) => MapPage());
    }
  }
}
