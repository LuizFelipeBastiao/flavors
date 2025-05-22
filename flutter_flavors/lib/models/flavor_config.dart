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
}