import 'package:flutter/material.dart';
import 'models/flavor_config.dart';

import 'app.dart';

void main() {
  FlavorConfig.appFlavor = Flavor.production;
  
  runApp(MyApp(flavorConfig: FlavorConfig(),),);
}