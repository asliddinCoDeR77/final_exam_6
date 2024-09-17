import 'package:final_exam_6/data/model/add_expanse.dart';
import 'package:sqflite/sqflite.dart';

class ExpenseDatabaseHelper {
  static final ExpenseDatabaseHelper _instance =
      ExpenseDatabaseHelper._internal();
  factory ExpenseDatabaseHelper() => _instance;
  static Database? _database;

  ExpenseDatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'expense_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE expenses(id INTEGER PRIMARY KEY, summa REAL, category TEXT, date TEXT, description TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertExpense(AddExpanseModel expense) async {
    final db = await database;
    await db.insert('expenses', expense.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<AddExpanseModel>> getExpenses() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('expenses');
    return List.generate(maps.length, (i) {
      return AddExpanseModel.fromMap(maps[i]);
    });
  }

  Future<void> deleteExpense(int id) async {
    final db = await database;
    await db.delete('expenses', where: 'id = ?', whereArgs: [id]);
  }
}
