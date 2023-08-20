// ignore_for_file: constant_identifier_names, no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preference/main.dart';
import 'package:shared_preference/page/home.dart';
import 'package:shared_preference/page/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text(
          'Shared Preference',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Future<void> gotoRegister() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }

  void checkLogin() async {
    final _prefs = await SharedPreferences.getInstance();

    final isLoggedIn = _prefs.getBool(SAVE_KEY_NAME);

    if (isLoggedIn == null || isLoggedIn == false) {
      gotoRegister();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }
}
