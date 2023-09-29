import 'package:flutter/material.dart';
import 'RouteGenerator.dart'; // Importe a classe RouteGenerator
import 'package:provider/provider.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medic Free Meditation',
      initialRoute: RouteGenerator.initialRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}


