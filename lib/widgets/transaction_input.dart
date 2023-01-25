import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  final Function addTransactionHandler;

  TransactionInput(this.addTransactionHandler);

  final titleController = new TextEditingController();
  final amountController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
              onPressed: () {
                addTransactionHandler(
                  titleController.text, double.parse(amountController.text),);
                Navigator.of(context).pop();
              },
            ),

          ],
        ),
      ),
    );
  }
}
