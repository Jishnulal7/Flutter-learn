import 'package:flutter/material.dart';

import 'screens/home.dart';

main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false
    
    ,
    );
  }
}