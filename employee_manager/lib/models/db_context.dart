

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'employee.dart'; //for join()


class DbContext {

  static final DbContext _instance = new DbContext.create();


  DbContext.create();
  
  factory DbContext() => _instance;

  static Database _db;

  final String tblName = 'employees';
  final String colId = 'id';
  final String colName = 'name';
  final String colEmail = 'email';
  final String colPhone = 'phone_number';

  Future<Database> get db async {
    if (_db != null) return _db;

    _db = await initDB();
    return _db;
  }

  initDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory(); //for get path
    String path = join(documentDirectory.path, 'employee.db'); // database path with name

    

    var ourDB = await openDatabase(path, version: 1, onCreate: _onCretae);

    return ourDB;
  }

  void _onCretae(Database db, int version) async {
    var query =
        'CREATE TABLE $tblName($colId INTEGER PRIMARY KEY, $colName TEXT, $colEmail TEXT, $colPhone TEXT)';
    await db.execute(query);
  }

  //save employee
  Future<int> saveEmployee(Employee employee) async {
    var dbClient = await db;

    var query =
        "INSERT INTO $tblName($colName, $colEmail, $colPhone) VALUES ('${employee.name}', '${employee.email}', '${employee.phoneNumber}')";
        
    var res;

    await dbClient.transaction((trans) async {
      res = await trans.rawInsert(query);
    });
    // dbClient.close();
    return res;
  }

  //get employees
  Future<List<Map>> getAllEmployees() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM $tblName');
    // print(list);
    // dbClient.close();
    return list;
  }

  //get employees
  Future<List<Map>> getSingleEmployee(int id) async {
    var dbClient = await db;
    var eployee = await dbClient.rawQuery('SELECT * FROM $tblName WHERE $colId = $id' );
    print(eployee);
    // dbClient.close();
    return eployee;
  }

  //update employee
  Future<int> updateEmployee(Employee employee, int id) async {
    var dbClient = await db;
    int count = await dbClient.rawUpdate(
        "UPDATE $tblName SET $colName = '${employee.name}',$colEmail = '${employee.email}',$colPhone = '${employee.phoneNumber}' WHERE $colId = $id");
    print('updated: $count');
    // dbClient.close();
    return count;
  }
  //delete employee
  Future<int> deleteEmployee(int id) async{
    var dbClient = await db;
    var count = await dbClient
    .rawDelete('DELETE FROM $tblName WHERE $colId = $id');

    // dbClient.close();
    return count;
  }
}