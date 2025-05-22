import 'package:flutter/material.dart';
import 'package:flutter_flavors/models/flavor_config.dart';
import 'app.dart';

void main(){
 
   FlavorConfig.appFlavor = Flavor.development;
  
  runApp(MyApp(flavorConfig: FlavorConfig(),),);
}