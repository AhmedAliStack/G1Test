import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/list_model.dart';

class LocalDatabase {
  static Database? db;

  static final LocalDatabase instance = LocalDatabase._init();

  LocalDatabase._init();

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
    final id = "INTEGER PRIMARY KEY AUTOINCREMENT";
    final title = "TEXT";
    final desc = "TEXT";
    final expiry = "TEXT";

    await db.execute(
        'CREATE TABLE Test (id $id, title $title, desc $desc, expiry $expiry)');
  }

  Future insertData(Product product) async {
    final currentDb = await instance.database;
    await currentDb.rawInsert('INSERT INTO Test(title, desc, expiry) VALUES( "${product.title}", "${product.desc}", "${product.expiry}")');
  }

  Future<List<Product>> readData() async{
    final db = await instance.database;
    final result = await db.rawQuery('SELECT * FROM Test');
    List<Product> list = [];
    result.forEach((element) {
      list.add(Product(title: element["title"].toString(),desc: element["desc"].toString(),expiry: element["expiry"].toString()));
    });
    return list;
  }

  Future updateData(Product productToInsert,int id) async{
    final db = await instance.database;
    await db.rawUpdate('UPDATE Test SET title = ?, desc = ? WHERE id = ?',
        [productToInsert.title, productToInsert.desc, id]);
  }

  Future deleteData() async{
    final db = await instance.database;
    await db.rawDelete('DELETE FROM Test WHERE id = ?', [21]);
  }
}
