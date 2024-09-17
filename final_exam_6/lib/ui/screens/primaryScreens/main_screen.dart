import 'package:final_exam_6/ui/screens/primaryScreens/expense_screen.dart';
import 'package:final_exam_6/ui/screens/primaryScreens/salary_screen.dart';
import 'package:final_exam_6/ui/widgets/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(15, 39, 43, 105),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(15, 39, 43, 105),
        title: Text(
          'Overview',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: AppCards.salaryCard,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SalaryScreen(),
                      ));
                },
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                child: AppCards.expenseCard,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ExpenseScreen();
                    },
                  ));
                },
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'History',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
// main my salary and expanse added history here 