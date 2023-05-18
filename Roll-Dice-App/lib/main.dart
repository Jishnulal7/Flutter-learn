import 'package:flutter/material.dart';
import 'package:roll_dice_app/Home.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      home: HomeScreen([Color.fromARGB(255, 57, 13, 133),Color.fromARGB(255, 53, 6, 133)]),
      debugShowCheckedModeBanner: false,
    );
  }
}