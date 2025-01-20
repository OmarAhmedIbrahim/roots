import 'package:flutter/material.dart';
import 'package:roots/features/Home/presentation/pages/home_page.dart';
import 'package:roots/features/authentication/presentation/pages/further_info_handler.dart';
import 'package:roots/features/authentication/presentation/pages/sign_up_page.dart';
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
      home:  HomePage(),
    );
  }
}
