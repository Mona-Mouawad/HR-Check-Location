import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:hr/Screens/Employee_Data.dart';
import '../shared/component.dart';
import '../shared/style/colors.dart';

class Personnel_procedures_Screen extends StatefulWidget {
  const Personnel_procedures_Screen({Key? key}) : super(key: key);

  @override
  State<Personnel_procedures_Screen> createState() =>
      _Personnel_procedures_ScreenState();
}

class _Personnel_procedures_ScreenState
    extends State<Personnel_procedures_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        //  leading: IconButton(icon: Icon(Icons.menu_outlined) ,onPressed: (){}),
        title: Row(
          children: [
            Spacer(),
            Text('اجراءات شئون العاملين', // textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: Directionality(
          // <-- Add this Directionality
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: BuildCondition(
              condition: true,
              builder: (context) => ListView.builder(
                itemBuilder: (context, index) => items(),
                itemCount: 3,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
              fallback: (context) => Container(),
            ),
          )),
      bottomSheet: bottomSheet ,
    );
  }

  Widget items() {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * .3,
                    child: Text('مسلسل', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Expanded(
                    child: Text('4444', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: defultcolor)),
                  ),
                ],
              ),
              myDivited(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * .3,
                    child: Text(
                        'رقم الموظف', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Expanded(
                    child: Text('4444', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: defultcolor)),
                  ),
                  IconButton(onPressed: (){NavigatorTo(context, Employee_Data());},
                  icon:Icon( Icons.visibility_outlined,
                    color: Colors.orange,)
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              myDivited(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * .3,
                    child: Text('الاسم', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Expanded(
                    child: Text('خالد', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: defultcolor)),
                  ),
                ],
              ),
              myDivited(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * .3,
                    child: Text('الاجراء', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Expanded(
                    child: Text('4444', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: defultcolor)),
                  ),
                ],
              ),
              myDivited(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * .3,
                    child: Text('التاريخ', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Expanded(
                    child: Text('4444', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: defultcolor)),
                  ),
                ],
              ),
              myDivited(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * .3,
                    child: Text(
                        'عدد الساعات', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Expanded(
                    child: Text('4444', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: defultcolor)),
                  ),
                ],
              ),
              myDivited(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * .3,
                    child: Text('ملاحظات', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Expanded(
                    child: Text('4444', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: defultcolor)),
                  ),
                ],
              ),
              myDivited(),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    radius: 3,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * .3,
                    child: Text(
                        'حالة الاجراء', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Expanded(
                    child: Text('-', // textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: defultcolor)),
                  ),
                ],
              ),
              myDivited(),
              defultButton(
                  ontap: () {
                    openApproval(context);
                  },
                  height: 30,
                  text: 'تفاصيل الاعتماد   ',
                  color: Colors.orangeAccent,
                  icon: Icons.arrow_drop_down),
            ],
          ),
        ),
      ),
    );
  }

  Future openApproval(context) => showDialog(
      context: context,
      builder: (context) {
        double width = MediaQuery.of(context).size.width;
        return AlertDialog(
            // alignment: Alignment.centerRight,
            contentPadding: EdgeInsets.all(0),
            content: Directionality(
              // <-- Add this Directionality
                textDirection: TextDirection.rtl,
              child: StatefulBuilder(
                  builder: (context, setState) => Container(
                    height: MediaQuery.of(context).size.height * 0.6 ,
                    child: Column(
                      children: [
                        Container(alignment: Alignment.centerRight,
                          color: defultcolor, height: 36,
                          child: Text('   تفاصيل الاعتماد',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                                color: Colors.grey[300],
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.blue[800],
                                                radius: 3,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: width * .25,
                                                child: Text('مسلسل',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Colors.black)),
                                              ),
                                              Expanded(
                                                child: Text('4444',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: defultcolor)),
                                              ),
                                            ],
                                          ),
                                          myDivited(),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.blue[800],
                                                radius: 3,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: width * .25,
                                                child: Text('المعتمد',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Colors.black)),
                                              ),
                                              Expanded(
                                                child: Text('محمد محمود محمد محمود محمد محمود ',maxLines: 2,overflow: TextOverflow.ellipsis,
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: defultcolor)),
                                              ),
                                            ],
                                          ),
                                          myDivited(),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.blue[800],
                                                radius: 3,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: width * .25,
                                                child: Text('حالة الاعتماد',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Colors.black)),
                                              ),
                                              Expanded(
                                                child: Text('خالد',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: defultcolor)),
                                              ),
                                            ],
                                          ),
                                          myDivited(),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.blue[800],
                                                radius: 3,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: width * .25,
                                                child: Text('التاريخ',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Colors.black)),
                                              ),
                                              Expanded(
                                                child: Text('4444',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: defultcolor)),
                                              ),
                                            ],
                                          ),
                                          myDivited(),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.blue[800],
                                                radius: 3,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: width * .25,
                                                child: Text('ملاحظات',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Colors.black)),
                                              ),
                                              Expanded(
                                                child: Text('-',
                                                    // textDirection: TextDirection.ltr,
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 14,
                                                        color: defultcolor)),
                                              ),
                                            ],
                                          ),
                                          myDivited(),
                                          defultButton(
                                              ontap: () {},
                                              height: 30,
                                              text: 'تراجع عن الاعتماد',
                                              color: Colors.pink,
                                              icon: Icons.download_done_rounded),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: defultButton(
                              ontap: () {},
                              text: 'موافق',
                              icon: Icons.download_done_rounded),
                        ),
                      ],
                    ),
                  )),
            ));
      });
}
