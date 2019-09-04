import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String name;
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final String prefixLabel;
  final String selectedRoute;
  const DrawerItem(
      {Key key,
      this.name,
      this.title = "",
      this.icon,
      this.prefixLabel,
      this.selectedRoute,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: _isSelected(),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 8),
                child: _buildLeadingWidget(context, prefixLabel, icon)),
            Text(title),
          ],
        ),
      ),
      onTap: () {
        if (_isSelected()) return;
        onTap();
      },
    );
  }

  bool _isSelected() {
    return selectedRoute != null && selectedRoute == name;
  }

  Widget _buildLeadingWidget(
      BuildContext context, String prefixLabel, IconData icon) {
    Widget toReturn;
    final theme = Theme.of(context);

    if (prefixLabel != null)
      toReturn = Text(prefixLabel,
          overflow: TextOverflow.fade,
          style: TextStyle(
              color: theme.primaryColor, fontSize: theme.iconTheme.size));
    else if (icon != null)
      toReturn = Icon(
        icon,
        color: theme.primaryColor,
      );
    else
      toReturn = Container(width: theme.iconTheme.size);

    return Padding(padding: const EdgeInsets.only(right: 8.0), child: toReturn);
  }
}
