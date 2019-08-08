import 'package:flutter/material.dart';
import 'package:flutter_starter/application.dart';
import 'package:flutter_starter/config/flavor.dart';
import 'package:flutter_starter/config/flavor_config.dart';
import 'package:flutter_starter/config/flavor_values.dart';

void main() {
  FlavorConfig(flavor: Flavor.DEV, color: Colors.red, values: FlavorValues());
  runApp(Application());
}
