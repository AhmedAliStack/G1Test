import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/list_model.dart';

class DatabaseExample {
  static Database? db;

  static final DatabaseExample instance = DatabaseExample._init();
  DatabaseExample._init();

  Future<Database> get database async {
    if (db != null) return db!;

    db = await _initDB('notes.db');
    return db!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    final uniqueId = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final id = "INTEGER";
    final title = 'TEXT';
    final desc = 'TEXT';
    final expiry = 'TEXT';

    await db.execute(
        'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
  }

  Future insertData(Product productToInsert) async {
    final db = await instance.database;
        db.rawInsert(
        'INSERT INTO Test(name, value, num) VALUES("some name", 1234, 456.789)');

    await readData();
  }
  
  Future readData() async{
    final db = await instance.database;
    final result = await db.rawQuery('SELECT * FROM Test');
    print("Table Result : $result");
  }

  Future updateData(Product productToInsert) async{
    await db?.rawUpdate('UPDATE products SET title = ?, desc = ? WHERE id = ?',
        [productToInsert.title, productToInsert.desc, 200]);
  }

  Future deleteData() async{
    await db?.rawDelete('DELETE FROM products WHERE id = ?', [21]);
  }
}
