import 'package:flutter/material.dart';

class DrawerSection extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerSection({Key key, this.title = "", this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(
                  icon,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            Text(title),
          ],
        ),
      ),
      color: Colors.grey[300],
    );
  }
}
