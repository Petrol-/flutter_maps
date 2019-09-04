import 'package:flutter/material.dart';
import 'package:flutter_maps/features/map/pages/map_page.dart';
import 'package:flutter_maps/features/new_contract/pages/new_contract_page.dart';
import 'package:flutter_maps/routes.dart';

class Router {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    if (settings.isInitialRoute)
      return MaterialPageRoute(builder: (_) => MapPage());

    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => MapPage());
        break;
      case Routes.newContract:
        return MaterialPageRoute( builder: (_) => NewContractPage());
        break;
      default:
        return MaterialPageRoute(builder: (_) => MapPage());
    }
  }
}
