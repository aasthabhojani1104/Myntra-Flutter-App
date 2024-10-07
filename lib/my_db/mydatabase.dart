import 'package:sqflite/sqflite.dart';

class Mydatabase{
  Future<Database> initDatabase()async{
   return await openDatabase('$getDatabasesPath()|mydatabase.db',version: 1,onCreate: (db, version) {
     db.execute('CREATE TABLE Tbl_User(UserId INTEGER PRIMARY KEY AUTOINCREMENT,Name Text,City Text)');
   },);
  }

  Future<int> insertUserInTBLUser({required name, required city}) async {
    Database db = await initDatabase();
    Map<String, dynamic> map = {};
    map['Name'] = name;
    map['City'] = city;
    return await db.insert('TBL_USER', map);
  }
  Future<List<Map<String, Object?>>> getUserListFromTBLUser() async {
    return await (await initDatabase()).rawQuery('SELECT * FROM TBL_USER');
  }

}
