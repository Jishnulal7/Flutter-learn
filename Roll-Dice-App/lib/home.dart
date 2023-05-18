import 'dart:math';

import 'package:flutter/material.dart';

var diceRandomiser = Random();

class HomeScreen extends StatefulWidget {
  HomeScreen(this.gradientColors, {super.key});

  final List<Color> gradientColors;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
var curentDice = 1;
  diceRoll() {
    setState(() {
      curentDice = diceRandomiser.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: widget.gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/dice-$curentDice.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: diceRoll,
                    child: const Text(
                      'Roll a Dice',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
