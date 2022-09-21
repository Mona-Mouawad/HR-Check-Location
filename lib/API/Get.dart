import 'dart:convert';

import 'package:hr/DataBase/CreateDB.dart';
import 'package:hr/models/LeLocation_Model.dart';
import 'package:hr/shared/helper/Dio_Helper.dart';

getCitydata({required int LeId })
async {
  LeLocation model ;
  Dio_Helper.getData(url: '').then((value) async {
    print(value);
    String v =value.toString().trim().replaceAll('\r\n', '').replaceAll('^', '');
    model=LeLocation.fromJson(jsonDecode(v));
    print('//////////   MobHrLeLocation.fromJson    ////////');
    print(model.items[0].Lx.toString());
    await database.transaction((txn)async {
      await txn.delete('MobHrLeLocation');});
    model.items.forEach((element)  async {
      await
      database.insert('MobHrLeLocation', element.toJson());
    });
//    await  getMobHrLeLocation(database);
    print('  MobHrLeLocation.length.toString()  '+model.items.length.toString());
    print('**********************  items  ++++++++++++-------------=====================');
  } ).catchError((Error)
  { print("eee  MobHrLeLocation  "+Error.toString());
  });
}