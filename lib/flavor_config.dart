import 'package:flutter/material.dart';

class FlavorConfig {
  final String appTitle;
  final Color color;

  FlavorConfig({
    required this.appTitle,
    required this.color,
  });
}

enum Flavor {
  prod,
  test,
  dev,
}
