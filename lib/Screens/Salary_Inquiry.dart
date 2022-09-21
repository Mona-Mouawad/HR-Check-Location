import 'package:flutter/material.dart';
import 'package:hr/Screens/salaries_Screen.dart';
import '../shared/component.dart';

class Salary_Inquiry extends StatefulWidget {
  const Salary_Inquiry({Key? key}) : super(key: key);

  @override
  State<Salary_Inquiry> createState() => _Salary_InquiryState();
}

class _Salary_InquiryState extends State<Salary_Inquiry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  leading: IconButton(icon: Icon(Icons.menu_outlined) ,onPressed: (){}),
        title: Row(
          children: [
            Spacer(),
            Text('استعلام عن الرواتب', // textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16,)),
            SizedBox(width: 20,)
          ],
        ),
      ),
      body: Directionality( // <-- Add this Directionality
        textDirection: TextDirection.rtl,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(width: 70,
                      child: Text('السنه', // textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                    SizedBox(width: 10,),
                    Expanded(child: borderContainer(text: '2020',context: context,color: Colors.grey,icon: Icons.arrow_drop_down_sharp,ontap: (){}))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(width: 70,
                      child: Text('الشهر', // textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                    SizedBox(width: 10,),
                    Expanded(child: borderContainer(text: '${DateTime.now().month}',context: context,
                        icon: Icons.arrow_drop_down_sharp,ontap: (){},Size: 11))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(width: 70,
                      child: Text('الصرفية', // textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                    SizedBox(width: 10,),
                    Expanded(child: borderContainer(text: 'اختر الصرفية ..',context: context,
                        icon: Icons.arrow_drop_down_sharp,ontap: (){},Size: 11))
                  ],
                ),
                Spacer(flex: 2),
                Image(image: AssetImage('image/salary.jpeg'),height: 160,),
                Spacer(flex: 7),
                defultButton(ontap: (){
                  NavigatorTo(context, Salaries_Screen());
                },text: 'استعلام',icon: Icons.download_done_sharp),
                Spacer(flex: 1),
              ],
            )  ),
      ),
      bottomSheet: bottomSheet ,
    );
  }
}
