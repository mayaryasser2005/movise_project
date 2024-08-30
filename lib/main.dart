import 'package:flutter/material.dart';
import 'package:movise_project/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {Home.routeNamed: (_) => Home()},
      initialRoute: Home.routeNamed,
    );
  }
}
