import 'package:flutter/material.dart';
import 'models/flavor_config.dart';
import 'pages/login_page.dart';

class MyApp extends StatelessWidget {
  final FlavorConfig flavorConfig;
  const MyApp({super.key, required this.flavorConfig});
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: FlavorConfig.appFlavor == Flavor.development ? true : false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginPage(flavorConfig: flavorConfig),
    );
  }
}