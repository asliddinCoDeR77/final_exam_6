// class SalaryBloc extends Bloc<SalaryEvent, SalaryState> {
//   final ExpenseDatabaseHelper databaseHelper;

//   SalaryBloc(this.databaseHelper) : super(ExpenseInitial()) {
//     on<AddExpense>(_onAddExpense);
//     on<LoadExpenses>(_onLoadExpenses);
//     on<DeleteExpense>(_onDeleteExpense);
//   }

//   void _onAddExpense(AddExpense event, Emitter<SalaryState> emit) async {
//     await databaseHelper.insertExpense(event.expense);
//     add(LoadExpenses());
//   }

//   void _onLoadExpenses(LoadExpenses event, Emitter<SalaryState> emit) async {
//     try {
//       final expenses = await databaseHelper.getExpenses();
//       emit(ExpenseLoaded(expenses));
//     } catch (e) {
//       emit(ExpenseError());
//     }
//   }

//   void _onDeleteExpense(DeleteExpense event, Emitter<SalaryState> emit) async {
//     await databaseHelper.deleteExpense(event.id);
//     add(LoadExpenses());
//   }
// }
