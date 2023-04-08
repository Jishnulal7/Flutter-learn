import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter App",
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Card(
              color: Colors.blue,
              elevation: 5,
              child: Container(
                width: double.infinity,
                child: Text(
                  'CHART !',
                ),
              ),
            ),
            Card(
              child: Text(
                'List of TXT',
              ),
            )
          ],
        ));
  }
}
