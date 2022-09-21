import 'package:flutter/material.dart';
import '../shared/component.dart';

class procedures_Inquiries extends StatefulWidget {
  const procedures_Inquiries({Key? key}) : super(key: key);

  @override
  State<procedures_Inquiries> createState() => _procedures_InquiriesState();
}

class _procedures_InquiriesState extends State<procedures_Inquiries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  leading: IconButton(icon: Icon(Icons.menu_outlined) ,onPressed: (){}),
        title: Row(
          children: [
            Spacer(),
            Text('الاستعلام عن الاجراءات', // textDirection: TextDirection.ltr,
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
                      child: Text('الاجراء', // textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                    SizedBox(width: 10,),
                    Expanded(child: borderContainer(text: '2020',context: context,color: Colors.grey,icon: Icons.arrow_drop_down_sharp,ontap: (){}))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(width: 70,
                      child: Text('حالة الاجراء', // textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                    SizedBox(width: 10,),
                    Expanded(child: borderContainer(text: '${DateTime.now().month}',context: context,
                        icon: Icons.arrow_drop_down_sharp,ontap: (){},Size: 11))
                  ],
                ),
                SizedBox(height: 14,),
                Row(
                  children: [
                    Container(width: 70,
                      child: Text('من تاريخ', // textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                    SizedBox(width: 10,),
                    Expanded(child: borderContainer(text: '${DateTime.now().toString().split(' ')[0]}',context: context,
                        icon: Icons.calendar_month,ontap: (){},Size: 11))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(width: 70,
                      child: Text('الى تاريخ', // textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                    SizedBox(width: 10,),
                    Expanded(child: borderContainer(text: '${DateTime.now().toString().split(' ')[0]}',context: context,
                        icon: Icons.calendar_month,ontap: (){},Size: 11))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(width: 70,
                      child: Text('التقرير', // textDirection: TextDirection.ltr,
                          style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                    SizedBox(width: 10,),
                    Expanded(child: borderContainer(text: '1-عام',context: context,
                        icon: Icons.arrow_drop_down_sharp,ontap: (){},Size: 11))
                  ],
                ),
                Spacer(),
                defultButton(ontap: (){
              //    NavigatorTo(context, Salaries_Screen());
                },text: 'استعلام',icon: Icons.download_done_sharp),
                SizedBox(height: 20,),
              ],
            )  ),
      ),
      bottomSheet: bottomSheet ,
    );
  }
}
