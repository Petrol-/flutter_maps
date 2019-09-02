import 'package:flutter/material.dart';

class RoundSearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var inputDecoration = InputDecoration(
        hintText: 'Rechercher',
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        filled: true,
        fillColor: theme.backgroundColor,
        enabledBorder: buildOutlineInputBorder(theme),
        border: buildOutlineInputBorder(theme),
        suffixIcon: Icon(Icons.search));
    return TextField(
      style: TextStyle(fontSize: 12),
      decoration: inputDecoration,
    );
  }

  OutlineInputBorder buildOutlineInputBorder(ThemeData theme) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: theme.primaryColor),
        borderRadius: BorderRadius.circular(100));
  }
}
