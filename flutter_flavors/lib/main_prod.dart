import 'package:flutter/material.dart';
import 'models/flavor_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';

Future<void> main()async  {
  await dotenv.load(fileName: ".env.prod");
  FlavorConfig.appFlavor = Flavor.production;
  
  runApp(MyApp(flavorConfig: FlavorConfig(),),);
}