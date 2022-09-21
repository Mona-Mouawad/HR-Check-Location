import 'package:flutter/material.dart';
import '../shared/component.dart';
import '../shared/style/colors.dart';

class Employee_Data extends StatefulWidget {
  const Employee_Data({Key? key}) : super(key: key);

  @override
  State<Employee_Data> createState() => _Employee_DataState();
}

class _Employee_DataState extends State<Employee_Data> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width  ;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        //  leading: IconButton(icon: Icon(Icons.menu_outlined) ,onPressed: (){}),
        title: Row(
          children: [
            Spacer(),
            Text('بيانات الموظفين', // textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16,)),
            SizedBox(width: 20,)
          ],
        ),
      ),
      body: Directionality( // <-- Add this Directionality
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
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
                        SizedBox(width: 8,),
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
                          child: Text('الاسم', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('حالة الراتب', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('الحالة الوظيفية', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('الوظيفية', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('التصنيف المالى', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('الهوية الشخصيه', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('تاريخ استلام العمل', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('الفرع', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('القطاع', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('الادارة العامه', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('الادارة', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('القسم', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
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
                        SizedBox(width: 8,),
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
                          child: Text('كود البصمه', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('257', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('نوع العقد', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('تاريخ الميلاد', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('العنون', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('4444',maxLines: 3,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('رقم هاتف العمل', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('بريد الكترونى العمل', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('بريد الكترونى شخصى', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('وصف المؤهل', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('257', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('الرقم التأمينى', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('محمول 1', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('محمول 2', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('4444',maxLines: 3,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('حالة التأمين الاجتماعى', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
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
                          child: Text('رقم الملف التأمين', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('مكتب التأمينات الاجتماعى', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('الوظيفة فى التأمينات', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('تاريخ بداية التأمين_الاجتماعى', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('حالة التأمين الطبى الخاص', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                    myDivited(),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue[800],radius: 3,),
                        SizedBox(width: 10,),
                        Container(width: width*.3 ,
                          child: Text('رقم الوثيقة التأمين الطبى الخاص', // textDirection: TextDirection.ltr,
                              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                        SizedBox(width: 8,),
                        Expanded(child:  Text('-', // textDirection: TextDirection.ltr,
                            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: defultcolor)), ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
