import 'package:flutter/material.dart';

class RoundSearchBar extends StatelessWidget {
  static OutlineInputBorder _border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlue),
      borderRadius: BorderRadius.circular(100));

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 12),
      decoration: InputDecoration(
          hintText: 'Rechercher',
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: _border,
          border: _border,
          suffixIcon: Icon(Icons.search)),
    );
  }
}
