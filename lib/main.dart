import 'package:flutter/material.dart';
import 'package:roots/features/authentication/presentation/pages/choosing_campus_page.dart';
import 'package:roots/features/landing/presentation/pages/landing_page.dart';

void main() {
  runApp(RootsApp());
}

class RootsApp extends StatelessWidget {
  const RootsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ChoosingCampusPage(),
    );
  }
}
