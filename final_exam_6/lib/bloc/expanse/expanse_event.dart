import 'package:final_exam_6/data/model/add_expanse.dart';

abstract class ExpenseEvent {}

class AddExpense extends ExpenseEvent {
  final AddExpanseModel expense;
  AddExpense(this.expense);
}

class LoadExpenses extends ExpenseEvent {}

class DeleteExpense extends ExpenseEvent {
  final int id;
  DeleteExpense(this.id);
}
