import 'package:flutter/material.dart';
import 'package:hr/Screens/Salary_Inquiry.dart';
import '../shared/component.dart';
import 'Personnel_procedures.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('0287'),
            accountEmail: Text('Mohamed'),
            currentAccountPicture: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                ),
                CircleAvatar(
                  radius: 38,
                  backgroundImage: AssetImage('image/person.jpg'),
                ),
              ],
            ),
            currentAccountPictureSize: Size.fromRadius(40),
            otherAccountsPictures: [
              IconButton(onPressed: (){}, icon: Icon(Icons.facebook),color: Colors.white,),
              IconButton(onPressed: (){}, icon: Icon(Icons.language_rounded),color: Colors.white,),
              IconButton(onPressed: (){}, icon: Icon(Icons.call),color: Colors.white,),
    ],
          ),
          ListTile(
            leading:  Icon(Icons.person_search_sharp,color: Colors.black54,),
            title: Text('ملف الموظف',style: TextStyle(fontWeight: FontWeight.bold ),),
          ),
          ListTile(
            leading:  Icon(Icons.device_hub_outlined,color: Colors.black54,),
            title: Text('اجراءات شئون العاملين',style: TextStyle(fontWeight: FontWeight.bold ),),
            onTap: (){NavigatorTo(context, Personnel_procedures_Screen());},
          ),
          ListTile(
            leading:  Icon(Icons.local_atm_outlined,color: Colors.black54,),
            title: Text('الرواتب',style: TextStyle(fontWeight: FontWeight.bold ),),
            onTap: (){NavigatorTo(context, Salary_Inquiry());},
          ),
          ListTile(
            leading:  Icon(Icons.stars_sharp,color: Colors.black54,),
            title: Text('تقيم الأداء',style: TextStyle(fontWeight: FontWeight.bold ),),
          ),
          ListTile(
            leading:  Icon(Icons.person,color: Colors.black54,),
            title: Text('المستخدمين النشطة',style: TextStyle(fontWeight: FontWeight.bold ),),
          ),
          Divider(),
          Text('   الاعدادات',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54,),),
          ListTile(
            leading:  Icon(Icons.settings,color: Colors.black54,),
            title: Text('الاعدادات',style: TextStyle(fontWeight: FontWeight.bold ),),
          ),
          ListTile(
            leading:  Icon(Icons.business,color: Colors.black54,),
            title: Text('عن التطبيق',style: TextStyle(fontWeight: FontWeight.bold ),),
          ),
          ListTile(
            leading:  Icon(Icons.notifications_none_sharp,color: Colors.black54,),
            title: Text('التنبيهات',style: TextStyle(fontWeight: FontWeight.bold ),),
          ),
          ListTile(
            leading:  Icon(Icons.logout,color: Colors.black54,),
            title: Text('تسجيل خروج',style: TextStyle(fontWeight: FontWeight.bold ),),
          ),

        ],
      ),

    );
  }
}
