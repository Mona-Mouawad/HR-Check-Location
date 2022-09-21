import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import '../shared/component.dart';
import '../shared/style/colors.dart';

class Fingerprint_Query extends StatefulWidget {

  @override
  State<Fingerprint_Query> createState() => _Fingerprint_QueryState();
}
bool ? FristFinger =false ;
TextEditingController Search =TextEditingController();

class _Fingerprint_QueryState extends State<Fingerprint_Query> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width  ;

    return Scaffold(
      appBar: AppBar(
        //  leading: IconButton(icon: Icon(Icons.menu_outlined) ,onPressed: (){}),
        title: Row(
          children: [
            Spacer(),
            Text('الاستعلام عن البصمة', // textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 16,)),
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
                  child: Text('الموظف', // textDirection: TextDirection.ltr,
                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)), ),
                SizedBox(width: 10,),
                Expanded(child: borderContainer(text: 'اختر موظف',context: context,color: Colors.grey,icon: Icons.arrow_drop_down_sharp,
                    ontap: (){ openEmploy(context);}))
              ],
            ),
            SizedBox(height: 10,),
             Text('نوع البصمة', // textDirection: TextDirection.ltr,
            style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)),
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
            Row(
              children: [
                Spacer(),
                Text('اول بصمه فى اليوم', // textDirection: TextDirection.ltr,
                    style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.black)),
                Checkbox(value: FristFinger , onChanged: (bool? v){
                  setState(() {
                    FristFinger = v! ;
                  });
                })

              ],
            ),
            Spacer(flex: 4),
            Image(image: AssetImage('image/figher.jpg'),height: 120,),
            Spacer(flex: 7),
            defultButton(ontap: (){},text: 'استعلام',icon: Icons.download_done_sharp),
            Spacer(flex: 1),
          ],
        )  ),
      ),
      bottomSheet: bottomSheet ,
    );
  }

  Future openEmploy(context) =>
      showDialog(
          context: context,
          builder: (context) {
            bool searchTap = false;
            return AlertDialog(
              // alignment: Alignment.centerRight,
              contentPadding: EdgeInsets.all(0),
              content:StatefulBuilder(
                builder: (context,setState) =>  Container(
                    height: MediaQuery.of(context).size.height * .4,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .6,
                    child: Column(
                      children: [
                       Container(alignment: Alignment.centerRight,
                          color: defultcolor, height: 36,
                          child: Text('   اختر موظف',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),),
                        ),
                        SizedBox(height: 20,),
                       Container(height: 25,
                         child: Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: TextFormField(
                             controller:Search ,textDirection:TextDirection.rtl ,
                             onChanged: (v){},
                             decoration: InputDecoration(hintText: ' ابحث هنا',hintTextDirection: TextDirection.rtl,
                             hintStyle: TextStyle(color: Colors.grey)),
                             minLines: 1, maxLines: 1,
                             textAlignVertical: TextAlignVertical.center,

                           ),
                         ),
                       ),
                        SizedBox(height: 2,),
                        BuildCondition(
                            condition: true ,
                            builder: (context)=> Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                               height: MediaQuery.of(context).size.height * .4 - 150,
                                child: ListView.separated(
                                    // shrinkWrap: true,
                                    // physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                        InkWell(
                                          onTap: () {},
                                          child: Row( textDirection: TextDirection.rtl,
                                            children: [
                                              Checkbox(value: FristFinger , onChanged: (bool? v){
                                                setState(() {
                                                  FristFinger = v! ;
                                                });
                                              }),
                                              Text('4404', // textDirection: TextDirection.ltr,
                                                  maxLines: 1, overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 12,color: defultcolor)),
                                              SizedBox(width: 10,),
                                              Expanded(
                                                child: Text('خالد محمد خالد محمد خالد محمد خالد محمود خالد محمد خالد محمد', // textDirection: TextDirection.ltr,
                                                    maxLines: 1, overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 12,color: Colors.black)),
                                              ),
                                              SizedBox(width: 10,)
                                            ],
                                          ),
                                          ),

                                    separatorBuilder: (context, index) =>
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 1),
                                          child: myDivited(),
                                        ),
                                    itemCount: 3,
                              ),
                            ), ),
                            fallback: (context)=>Container()
                        ),
                        SizedBox(height: 10,),
                        Container(alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: (){},
                            child: Text(
                              'موافق  ', textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(color: defultcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),),
                          ),
                        ),
                      ],
                    ) ),
              ),
            );
          });
}



