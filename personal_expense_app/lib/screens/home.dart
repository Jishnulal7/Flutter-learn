

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Container(child: Text("Flutter App",)),
      centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Card(child: Text('CHART !'),elevation: 5,)
        ,Card(child: Text('List of TXT'),)
      ],)
    );
  }
}