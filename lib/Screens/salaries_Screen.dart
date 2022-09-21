import 'package:flutter/material.dart';
import 'package:hr/shared/style/colors.dart';
import '../shared/component.dart';
import 'Employee_Data.dart';

class Salaries_Screen extends StatefulWidget {
  const Salaries_Screen({Key? key}) : super(key: key);

  @override
  State<Salaries_Screen> createState() => _Salaries_ScreenState();
}

class _Salaries_ScreenState extends State<Salaries_Screen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width  ;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Text('الرواتب', // textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16,)),
            SizedBox(width: 20,)
          ],
        ),
      ),
      body: Directionality( // <-- Add this Directionality
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                        child: Text('رقم الموظف', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                        IconButton(onPressed: (){NavigatorTo(context, Employee_Data());},
                            icon: Icon(Icons.visibility_outlined,color: Colors.orange,)),
                        SizedBox(width: 20,)
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('الاسم', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        Expanded(child:  Text('خالد', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                       ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('الشهر', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                       ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('السنة', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                       ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('الصرفيه', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                       ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('جهة الصرف', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                       ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('طريقة الصرف', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                       ],
                    ),
                    myDivited(),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(color: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0 ,horizontal: 15),
                          child: Column(
                            children: [
                              Text('الاستحقاقات', // textDirection: TextDirection.ltr,
                                  style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                 Text('عدد ساعات اضافى ليلي (حركه) : ',
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black ,height: 1.5)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor,height: 1.5)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('اجمالى الراتب : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black,height: 1.5)),
                                  Expanded(child:  Text('154', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor,height: 1.5)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('الاساسى : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('1255', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('حافز : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('بدل سكن : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('حافز ربع سنوي : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('التقيم الشهري : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('قيمة الحافز : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('قيمة الاضافى : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('عدد ساعات اضافى نهارى (حركه) : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('اجمالى الاستحقاف : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(color: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0 ,horizontal: 15),
                          child: Column(
                            children: [
                              Text('الاستقطاعات', // textDirection: TextDirection.ltr,
                                  style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.pink)),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('حصة العامل : ',
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black ,height: 1.5)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor,height: 1.5)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('سلف مستخدمة : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black,height: 1.5)),
                                  Expanded(child:  Text('154', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor,height: 1.5)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('عدد ايام بدون بصمة : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('1255', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('قيمة ايام بدون بصمه : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('اجمالى الاستقطاع : ', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: Colors.black)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,height: 1.5,fontSize: 14,color: defultcolor)), ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(color: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0 ,horizontal: 15),
                          child: Column(
                            children: [
                              Text('الصافى', // textDirection: TextDirection.ltr,
                                  style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.green)),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('الصافى بعد التقريب : ',
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black ,height: 1.5)),
                                  Expanded(child:  Text('4444', // textDirection: TextDirection.ltr,
                                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor,height: 1.5)), ),
                                ],
                              ),
                              SizedBox(height: 30,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(color: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0 ,horizontal: 15),
                          child: Column(
                            children: [
                              Text('ملاحظات', // textDirection: TextDirection.ltr,
                                  style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.orange)),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                 ],
                              ),

                              SizedBox(height: 30,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomSheet: bottomSheet ,
    );
  }
}
