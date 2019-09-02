import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final IconData icon;
  final VoidCallback onPressed;

  const RoundIconButton(
      {Key key,
      this.foregroundColor,
      this.backgroundColor,
      @required this.icon,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: 0,
      shape: CircleBorder(side: BorderSide(color: foregroundColor)),
      child: Icon(
        icon,
      ),
     onPressed: onPressed,
    );
  }
}
