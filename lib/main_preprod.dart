import 'package:flutter/material.dart';
import 'package:flutter_starter/application.dart';
import 'package:flutter_starter/config/flavor.dart';
import 'package:flutter_starter/config/flavor_config.dart';
import 'package:flutter_starter/config/flavor_values.dart';

void main() {
  FlavorConfig(flavor: Flavor.STAGING, color: Colors.purple, values: FlavorValues());
  runApp(Application());
}
