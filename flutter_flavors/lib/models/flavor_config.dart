enum Flavor {
  developmentm,
  production
}

class FlavorConfig{
  static late Flavor appFlavor;

  static String get title{
    switch (appFlavor){
      case Flavor.developmentm:
        return 'Development';
      case Flavor.production:
        return 'Production';
    }
  }
  static String get logoAsset{
    switch (appFlavor){
      case Flavor.developmentm:
        return 'assets/logo_dev.png';
      case Flavor.production:
        return 'assets/logo_prod.png';
    }
  }
}