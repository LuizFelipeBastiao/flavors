import 'package:flutter/material.dart';
import 'package:flutter_flavors/models/flavor_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';

void main(){
  
  // Load environment variables from .env file
  dotenv.load(fileName: ".env.dev");
   FlavorConfig.appFlavor = Flavor.development;
  
  runApp(MyApp(flavorConfig: FlavorConfig(),),);
}