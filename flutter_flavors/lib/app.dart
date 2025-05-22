import 'package:flutter/material.dart';
import 'models/flavor_config.dart';
class MyApp extends StatelessWidget {
  final FlavorConfig flavorConfig;
  const MyApp({super.key, required this.flavorConfig});
  
  @override
  Widget build(BuildContext context) {
    FlavorConfig.appFlavor = Flavor.values.firstWhere((e) => e.toString() == 'Flavor.$flavor');

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(),
    );
  }
}