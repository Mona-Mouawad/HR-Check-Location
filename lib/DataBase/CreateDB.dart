import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

late Database database;
createdatabase()async

{
  database = await openDatabase(
      'hr.db',
      version: 1,
      onCreate: (database,version)
      async {


        await database.execute('CREATE TABLE MobHrLeLocation(LeLocationId INTEGER PRIMARY KEY NOT NULL, LocName TEXT NOT NULL ,'
            'Lx TEXT NOT NULL , Ly TEXT NOT NULL, Radius INTEGER  NOT NULL , LeId INTEGER  NOT NULL  '
          //  ' , FOREIGN KEY(UserId)REFERENCES MobPosUser (Userid),'
        ).then(
                (value) => print('creat MobHrLeLocation db'));

      },

      onOpen: (database)
      async {
        print('database opened');
      }).then((value){
    database = value;
    return value ;});
}