import 'package:final_exam_6/data/model/add_salary_model.dart';

abstract class SalaryEvent {}

class AddSalary extends SalaryEvent {
  final AddSalaryModel salaryModel;
  AddSalary(this.salaryModel);
}

class LoadSalaryextends {}

class DeleteSalary extends SalaryEvent {
  final int id;
  DeleteSalary(this.id);
}
