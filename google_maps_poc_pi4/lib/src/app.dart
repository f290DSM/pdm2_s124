import 'package:flutter/material.dart';
import 'package:google_maps_poc_pi4/src/features/maps/presentation/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}
