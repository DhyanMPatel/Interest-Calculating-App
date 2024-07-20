///Interest Calculating App
import 'package:flutter/material.dart';
import 'package:interest_calculating_app/SimpleInterestApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleInterestApp(),
    );
  }
}