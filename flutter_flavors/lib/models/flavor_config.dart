import 'package:flutter/material.dart';
enum Flavor {
  development,
  production
}

class FlavorConfig{
  static late Flavor appFlavor;

  static String get title{
    switch (appFlavor){
      case Flavor.development:
        return 'Development';
      case Flavor.production:
        return 'Production';
    }
  }
  static String get logoAsset{
    switch (appFlavor){
      case Flavor.development:
        return 'assets//logo_dev.png';
      case Flavor.production:
        return 'assets/logo_prod.png';
    }
  }
  static Color get primaryColor{
    switch (appFlavor){
      case Flavor.development:
        return Colors.yellow;
      case Flavor.production:
        return Colors.blue;
    }
  }

  static ThemeData get theme{
    switch (appFlavor){
      case Flavor.development:
        return ThemeData(
          primarySwatch: Colors.yellow,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        );
      case Flavor.production:
        return ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        );
    }
  }

}