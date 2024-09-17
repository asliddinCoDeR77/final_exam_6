import 'package:flutter/material.dart';

class AppCards {
  static final salaryCard = Container(
    width: 124,
    height: 140,
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.wallet_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Text(
          'Total Salary',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    ),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8),
    ),
  );

  static final expenseCard = Container(
    width: 124,
    height: 140,
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.wallet_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Text(
          'Total Expense',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    ),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
// there is my 2 cards about this total salary and total expanse 