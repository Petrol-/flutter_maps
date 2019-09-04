import 'package:flutter/material.dart';
import 'package:flutter_maps/config/flavor_banner.dart';
import 'package:flutter_maps/features/map/pages/map_page.dart';
import 'package:flutter_maps/features/new_contract/pages/new_contract_page.dart';
import 'package:flutter_maps/routes.dart';

class Router {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return _wrapPage(MapPage());
        break;
      case Routes.newContract:
        return _wrapPage(NewContractPage());
        break;
      default:
        return _wrapPage(MapPage());
    }
  }

  static Route<dynamic> _wrapPage(Widget page) {
    return MaterialPageRoute(
        builder: (_) => FlavorBanner(
              child: page,
            ));
  }
}
