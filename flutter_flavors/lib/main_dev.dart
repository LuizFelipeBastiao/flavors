import 'package:flutter/material.dart';
import 'package:flutter_flavors/models/flavor_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';

Future<void> main() async{
  
   await dotenv.load(fileName: ".env.dev");
   FlavorConfig.appFlavor = Flavor.development;
  
  runApp(MyApp(flavorConfig: FlavorConfig(),),);
}