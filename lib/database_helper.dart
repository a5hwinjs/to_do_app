import 'Note.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper{

  static DatabaseHelper _databaseHelper; //It is a Singleton
  static DatabaseHelper _database;

  String noteTable='note_table';
  String colId='id';
  String colTitle='title';
  String colDescription ='description';
  String colPriority='priority';

  DatabaseHelper._createInstance();
   
   factory DatabaseHelper(){

     if(_databaseHelper == null)
     {
       _databaseHelper== DatabaseHelper._createInstance();
        
     }
     return _databaseHelper;

     }

  Future<Database> get database async{
      if(_database==null){
          _database=await initializeDatabase();
      }

      return _database;


  }

  Future<Database>initializeDatabase() async{
      Directory directory =await getApplicationDocumentsDirectory();
      String path= directory.path+'todo.db';

  }

  var todoDatabase =await openDatabase(
    path,version:1, onCreate:_createDb
  );
    return todoDatabse;
  

}