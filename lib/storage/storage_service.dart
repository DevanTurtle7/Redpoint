import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class StorageService {
  static const databasePath = 'storage.db';
  late final Database database;

  StorageService() {
    initDatabase();
  }

  initDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Open the database and store the reference.
    database = await openDatabase(
        join(await getDatabasesPath(), databasePath),
      // onCreate: (db, version) {
      //     return db.execute(
      //       // TODO: figure out sustainable way to read sql files to init db
      //     )
      }
    );
  }



}
