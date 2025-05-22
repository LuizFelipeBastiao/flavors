import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final String flavor;
  const MyApp({super.key, required this.flavor});
  
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
          child: Text('Flavor: $flavor'),
        ),
      ),
    );
  }
}