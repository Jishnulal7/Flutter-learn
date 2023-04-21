import 'package:flutter/material.dart';
import 'package:personal_expense_app/utils/transactions.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Transaction> transaction = [
    Transaction(
      id: '1',
      title: 'Recharge',
      amount: 499,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Mobile',
      amount: 9999,
      date: DateTime.now(),
    ),
  ];

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Colors.blue,
              elevation: 5,
              child: Container(
                width: double.infinity,
                child: const Text(
                  'CHART !',
                ),
              ),
            ),
            Column(
              children: transaction.map((txn) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          txn.amount.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.deepPurple),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            txn.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                          ),
                          Text(
                            txn.date.toString(),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
