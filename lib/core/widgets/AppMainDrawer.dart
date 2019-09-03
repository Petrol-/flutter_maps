import 'package:flutter/material.dart';

import 'drawer_item.dart';
import 'drawer_section.dart';

class AppMainDrawer extends StatelessWidget {
  const AppMainDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerSection(icon: Icons.access_alarm, title: "Menu"),
            DrawerItem(
                icon: Icons.map,
                title: "CARTE GEOLOCALISEE",
                onTap: () {})
          ],
        ),
      ),
    );
  }
}
