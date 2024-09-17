import 'package:final_exam_6/data/model/add_expanse.dart';

abstract class SalaryState {}

class SalaryInitial extends SalaryState {}

class SalaryLoaded extends SalaryState {
  final List<AddExpanseModel> Salarys;
  SalaryLoaded(this.Salarys);
}

class SalaryError extends SalaryState {}
