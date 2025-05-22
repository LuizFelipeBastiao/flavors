import 'package:flutter/material.dart';
import 'models/flavor_config.dart';
class MyApp extends StatelessWidget {
  final FlavorConfig flavorConfig;
  const MyApp({super.key, required this.flavorConfig});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Text('Flavor: $flavorConfig.title'),
        ),
      ),
    );
  }
}