import 'package:flutter/material.dart';
import 'models/flavor_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';

void main() {
  dotenv.load(fileName: ".env.prod");
  FlavorConfig.appFlavor = Flavor.production;
  
  runApp(MyApp(flavorConfig: FlavorConfig(),),);
}