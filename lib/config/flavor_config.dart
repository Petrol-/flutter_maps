import 'package:flutter/material.dart';
import 'package:flutter_maps/utils/string_utils.dart';

import 'flavor.dart';
import 'flavor_values.dart';


class FlavorConfig {
  static FlavorConfig _instance;

  final Flavor flavor;
  final Color color;
  final String name;
  final FlavorValues values;

  factory FlavorConfig(
      {@required Flavor flavor,
      Color color : Colors.blue,
      @required FlavorValues values}) {
    _instance ??= FlavorConfig._internal(flavor, StringUtils.enumName(flavor.toString()), color, values);
    return _instance;
  }

  FlavorConfig._internal(this.flavor, this.name, this.color, this.values);

  static FlavorConfig get instance => _instance;

  static Flavor get currentFlavor => _instance.flavor;

  static bool isProduction() => _instance.flavor == Flavor.PROD;

  static bool isDevelopment() => _instance.flavor == Flavor.DEV;

  static bool isStaging() => _instance.flavor == Flavor.STAGING;
}
