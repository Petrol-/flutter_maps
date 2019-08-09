import 'package:flutter/material.dart';
import 'package:flutter_maps/application.dart';
import 'package:flutter_maps/config/flavor.dart';
import 'package:flutter_maps/config/flavor_config.dart';
import 'package:flutter_maps/config/flavor_values.dart';

void main() {
  FlavorConfig(flavor: Flavor.STAGING, color: Colors.purple, values: FlavorValues());
  runApp(Application());
}
