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
    return Ink(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          border: Border.all(color: foregroundColor, width: 2)),
      child: IconButton(
        icon: Icon(
          icon,
          color: foregroundColor,
        ),
        color: backgroundColor,
        onPressed: onPressed,
      ),
    );
  }
}
