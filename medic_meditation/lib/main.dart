import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Importe o provider
import 'RouteGenerator.dart';
import 'seu_provider.dart'; // Importe o seu provider

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SuaClasseProvider(),
      child: MyApp(),
    ),
  );
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

