import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore,this.resetHandler);

  String get resultValue {
    var resultText = 'Good Job!';
    if (resultScore <= 10) {
      resultText = 'Nice...';
    } else if (resultScore <= 15) {
      resultText = 'Pretty good!';
    } else if (resultScore <= 20) {
      resultText = 'You are awesome!';
    } else {
      resultText = 'Hmmm...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultValue,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(onPressed: resetHandler, child: Text('Reset Quiz!'))
        ],
      ),
    );
  }
}
