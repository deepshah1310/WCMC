import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Databasehelper {
  static final _databasename = "persons.db";
  static final _databaseversion = 1;
  static final table = "my_table";
  static final columnID = 'id';
  static final columnName = "name";
  static final columnage = 'age';
  static Database _database;

  Databasehelper._privateConstructor();

  static final Databasehelper instance = Databasehelper._privateConstructor();

  Future<Database> get databse async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentdirecoty = await getApplicationDocumentsDirectory();
    String path = join(documentdirecoty.path, _databasename);
    return await openDatabase(
        path, version: _databaseversion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
        '''
      CREATE TABLE $table(
        $columnID INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL,
        $columnage INTEGER NOT NULL
      )
      '''
    );
  }

  //functions to insert,query,update and delete
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.databse;
    return await db.insert(table, row);
  }

  //query all rows
  Future<List<Map<String, dynamic>>> queryall() async {
    Database db = await instance.databse;
    return await db.query(table);
  }
  Future<List<Map<String, dynamic>>> queryspecific(int age) async {
    Database db = await instance.databse;
    //var res = await db.query(table, where: "age> ?",whereArgs: [age]);
    var res=await db.rawQuery('SELECT * FROM my_table WHERE age>?', [age]);
    return res;
  }
  Future<int> deletedata(int id) async{
    Database db = await instance.databse;
    var res=await db.delete(table, where: "id=?", whereArgs: [id]);
    return res;
  }
  Future<int> update(int id) async{
    Database db = await instance.databse;
    var res=await db.update(table, {"name": "Ram", "age": 2}, where: "id=?", whereArgs: [id]);
    return res;
  }
}

