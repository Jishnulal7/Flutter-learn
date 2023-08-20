import 'package:flutter/material.dart';
import 'package:shared_preference/page/splash.dart';

const SAVE_KEY_NAME = 'UserReg';
void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
