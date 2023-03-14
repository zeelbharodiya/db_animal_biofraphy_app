import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/animal_class.dart';
import '../views/screens/global.dart';
import 'api_animal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DBHelper {
  DBHelper._();
  static final DBHelper dbHelper = DBHelper._();

  final String dbName = "animalsData.db";
  final String colId = "id";
  final String colBioName = "name";
  final String colPage = "page";
  final String colImage = "image";


  Database? db;

  Future<void> initDB({required String tableName}) async {
    String directory = await getDatabasesPath();
    String path = join(directory, dbName);

    db = await openDatabase(path, version: 1, onCreate: (db, version) {});

    await db?.execute(
        "CREATE TABLE IF NOT EXISTS $tableName ($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colBioName TEXT,$colPage TEXT,$colImage BLOB)");
  }

  insertSubscriptionRecord(
      {required String tableName, required List<Subscription> data}) async {
    await initDB(tableName: tableName);
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List typeImage = [
      {"image": "Pets animal",
      },
      {"image": "Farm animal",},
      {"image": "Wild animal",},
      { "image": "Mammal animal",},
      {"image": "Sea animal",},
      {"image": "Insects animal",},
    ];


    for (int i = 0; i < data.length; i++) {
      Uint8List? image = await ImageAPIHelper.imageAPIHelper
          .getImage(search: "${i + 1} ${typeImage}");


      String query =
          "INSERT INTO $tableName($colBioName, $colPage, $colImage) VALUES(?, ?, ?)";
      List args = [
        data[i].name,
        data[i].page,
        image,
      ];

      await db?.rawInsert(query, args);
    }
    prefs.setBool(tableName, true);
  }




  Future<List<SubscriptionDB>> fetchAllSubscriptionRecords(
      {required String tableName, required List<Subscription> data}) async {
    await initDB(tableName: tableName);

    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool isInserted = prefs.getBool(tableName) ?? false;

    (isInserted)
        ? await updateImages(tableName: tableName, length: data.length)
        : await insertSubscriptionRecord(tableName: tableName, data: data);

    String query = "SELECT * FROM $tableName";

    List<Map<String, dynamic>> res = await db!.rawQuery(query);

    List<SubscriptionDB> animalsList =
    res.map((e) => SubscriptionDB.fromData(e)).toList();

    return animalsList;
  }

  Future<void> updateImages(
      {required String tableName, required int length}) async {

    for (int i = 0; i < length; i++) {
      Uint8List? image = await ImageAPIHelper.imageAPIHelper
          .getImage(search: "${i + 1} wild animal");

      String query =
          "UPDATE $tableName SET $colImage = ? WHERE $colId = ${i + 1}";
      List args = [image];
      await db?.rawUpdate(query, args);
    }
  }

}