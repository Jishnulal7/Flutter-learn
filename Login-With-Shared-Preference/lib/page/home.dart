// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preference/page/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _username = '';
  String _password = '';
  String _email = '';
  String _phone = '';

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  Future<void> _loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      _username = preferences.getString('username') ?? '';
      _password = preferences.getString('password') ?? '';
      _email = preferences.getString('email') ?? '';
      _phone = preferences.getString('phone') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preference'),
        actions: [
          IconButton(
            onPressed: () => signOut(context),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Username : $_username'),
            Text('email : $_email'),
            Text('password : $_password'),
            Text('phone : $_phone'),
          ],
        ),
      ),
    );
  }
}

signOut(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const RegisterPage(),
    ),
  );
}
