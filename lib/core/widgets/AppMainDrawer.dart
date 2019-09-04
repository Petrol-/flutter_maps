import 'package:flutter/material.dart';
import 'package:flutter_maps/routes.dart';
import 'package:flutter_maps/stores/application_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'drawer_item.dart';
import 'drawer_section.dart';

class AppMainDrawer extends StatelessWidget {
  final String currentRouteName;
  const AppMainDrawer({Key key, this.currentRouteName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStore = Provider.of<ApplicationStore>(context);
    return Drawer(
      child: SafeArea(
        child: Observer(
          builder: (_) => ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerSection(title: "Menu"),
              DrawerItem(
                name: Routes.home,
                selectedRoute: currentRouteName,
                icon: Icons.map,
                title: "CARTE GEOLOCALISEE",
                onTap: () {},
              ),
              DrawerItem(
                icon: Icons.autorenew,
                title: "CREER MA TOURNEE",
                onTap: () {},
              ),
              DrawerItem(
                icon: Icons.add_circle_outline,
                title: "NOUVEAU CONTRAT",
                onTap: () {},
              ),
              DrawerSection(
                title: "Tableau de bord",
              ),
              DrawerItem(
                prefixLabel: "${appStore.reportSaved}",
                title: "Documents enregistrés",
                onTap: () {
                  appStore.reportSaved += 1;
                },
              ),
              DrawerItem(
                prefixLabel: "${appStore.reportPaused}",
                title: "Documents en attente",
                onTap: () {
                  appStore.reportPaused += 1;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
