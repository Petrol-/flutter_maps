import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final String prefixLabel;
  final bool selected;
  const DrawerItem(
      {Key key,
      this.title = "",
      this.icon,
      this.prefixLabel,
      this.selected = false,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      selected: selected,
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
      onTap: onTap,
    );
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
