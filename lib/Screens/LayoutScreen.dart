import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr/Screens/Salary_Inquiry.dart';
import 'package:hr/Screens/procedures_Inquiries.dart';
import '../shared/component.dart';
import '../shared/style/colors.dart';
import 'Fingerprint_Query.dart';
import 'NavBar.dart';
import 'goINOUT_SignUp.dart';

class LayoutScreen extends StatefulWidget {

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width  ;

    return Scaffold(
      drawer: NavBar(),
       appBar: AppBar(
//leading: IconButton(icon: Icon(Icons.menu_outlined) ,onPressed: (){}),
         title: Text('شركة كيما فوم',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16)),
         actions: [
           IconButton(icon: Icon(Icons.notifications) ,onPressed: (){}),
           IconButton(icon: Icon(Icons.cake) ,onPressed: (){}),
           IconButton(icon: Icon(Icons.more_vert) ,onPressed: (){}),
         ],

       ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: (){ NavigatorTo(context, Salary_Inquiry());
                    },
                  child: Container(
                    width: width*.5 ,
                    height: 120,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.local_atm_outlined ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('الرواتب', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width * .5 ,
                    height: 120,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.stars_sharp ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('تقيم الاداء', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
   ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width,
                    height: 75,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.person,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('المستخدمين النشطه', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
   ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width *.3 -10,
                    height: 150,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.business ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('عن التطبيق', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
                     ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){NavigatorTo(context, goINOUT_SignUp_Screen()); },
                  child: Container(
                    width: width *.3 -10,
                    height: 150,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.fingerprint_sharp ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('تسجيل حضور وانصراف', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),


                      ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width *.3 -10,
                    height: 150,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.business ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('تسجيل اجراء', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),


                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: (){NavigatorTo(context, procedures_Inquiries()); },
                  child: Container(
                    width: width *.3 -10,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.approval_rounded ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('اعتماد الاجراءات', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
                      ],  ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width *.3 -10,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.alarm ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('التنبيهات', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
           ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width *.3 -10,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.chat_bubble_outlined ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('غرفة الشات', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
 ],   ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width *.5 -10,
                    height: 130,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.stars_sharp ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('تسجيل تقيم', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
  ],
                    ),
                  ),
                ),
                 Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width *.5 -10,
                    height: 130,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cloud_done_sharp ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('اعتماد التقيم', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
  ],            ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: (){NavigatorTo(context, Fingerprint_Query());},
                  child: Container(
                    width: width,
                    height: 75,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.fingerprint_sharp,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('الاستعلام عن البصمة', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),  ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: width *.5 -10,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.filter_tilt_shift ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('تسجيل الورديات', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){//NavigatorTo(context, goINOUT_SignUp_Screen());
                    },
                  child: Container(
                    width: ((width *.5) -10),
                    height: 150,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.description ,size: 40,color: defultcolor,),
                        SizedBox(height: 10,),
                        Text('الوصف الوظيفى', textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 13)),


                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: bottomSheet ,
    );
  }
}
