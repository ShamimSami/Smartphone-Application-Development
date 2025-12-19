import 'package:flutter/material.dart';
import 'package:general_esports_package_system/home_page.dart';

void main() {
  runApp(const GeneralEsportsApp());
}

class GeneralEsportsApp extends StatelessWidget {
  const GeneralEsportsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'General Esports',
      home: const HomePage(),
    );
  }
}
