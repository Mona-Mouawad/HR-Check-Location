import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hr/Cubit/States.dart';
import 'package:hr/Cubit/cubit.dart';
import 'package:hr/shared/component.dart';
import 'package:hr/shared/style/colors.dart';
import '../shared/Location.dart';

class goINOUT_SignUp_Screen extends StatefulWidget {
  const goINOUT_SignUp_Screen({Key? key}) : super(key: key);

  @override
  State<goINOUT_SignUp_Screen> createState() => _goINOUT_SignUp_ScreenState();
}

TextEditingController notes = TextEditingController();

class _goINOUT_SignUp_ScreenState extends State<goINOUT_SignUp_Screen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HRCubit,HRStates>(
        listener: (context,state){},
        builder: (context,state){
          var cubit = HRCubit.get(context) ;
          return Scaffold(
          appBar: AppBar(
            //  leading: IconButton(icon: Icon(Icons.menu_outlined) ,onPressed: (){}),
            title: Row(
              children: [
                Spacer(),
                Text('تسجيل حضور وانصراف', // textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
              ],
            ),
            actions: [
              IconButton(icon: Icon(Icons.wifi), onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.add_location_alt_rounded), onPressed: () {}),
            ],
          ),
          body: Directionality(
            // <-- Add this Directionality
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70,
                        child: Text('الموقع', // textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: borderContainer(
                              text: 'اختر الموقع',
                              context: context,
                              icon: Icons.arrow_drop_down,
                              ontap: () {},
                              Size: 11))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 70,
                        child: Text(
                            'نوع التسجيل', // textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            width: MediaQuery.of(context).size.width * .7,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: DropdownButton<String>(
                                      underline: Container(),
                                      hint:Text('أختر نوع التسجيل') ,
                                      icon: Container() ,
                                      items: cubit.RegistrationtypeList.map<DropdownMenuItem<String>>((String item) {
                                    return DropdownMenuItem<String>
                                    (value: item,
                                    alignment: AlignmentDirectional.centerEnd,
                                      child: Text(item, textAlign: TextAlign.center,
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(color:defultcolor,
                                      fontWeight: FontWeight.bold, fontSize: 14),),
                                    );}).toList(),
                                      onChanged: (v){
                                        cubit.changeDropdown_Registrationtype(v: v.toString());
                                      },
                                      value: cubit.val_Registrationtype.isNotEmpty ? cubit.val_Registrationtype.toString() : null ,
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 70,
                        child: Text(
                            'ملاحظات', // textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            width: MediaQuery.of(context).size.width * .7,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 10),
                              child: TextFormField(
                                controller: notes,
                                minLines: 1,
                                maxLines: 3,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsetsDirectional.all(3),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),),
                                ),
                                onFieldSubmitted: (v){},
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                          //   bearing: 192.8334901395799,
                          target: LatLng(User_latitude!, User_longitude!),
                          //   tilt: 59.440717697143555,
                          zoom: 18),
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                      onMapCreated: (GoogleMapController googleMapController) {
                        setState(() {
                          Markers.add(Marker(
                            markerId: MarkerId('1'),
                            position: LatLng(Center_latitude, Center_longitude),
                          ));
                          // Markers.add(Marker(
                          //   markerId: MarkerId('2'),
                          //   position: LatLng(User_latitude!, User_longitude!),
                          //   icon: BitmapDescriptor.defaultMarkerWithHue(1)  ,
                          // ));
                          // Markers.add(Marker(
                          //   markerId: MarkerId('3'),
                          //   position: LatLng(30.14499267331453, 31.29305910156697),
                          // ));
                        });
                      },
                      markers: Markers,
                      circles: circles,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  defultButton(
                      text: 'تسجيل',
                      icon: Icons.download_done_sharp,
                      ontap: () async {
                        if(cubit.val_Registrationtype != '') {
                              await arePointsNear();
                              if (InLocation!)
                                await openmessageINLOCSuccess(context);
                              else
                                openmessageOUTLOCPhoneSuccess(context);
                            }
                          else openmessageNOTRegSuccess(context);
                          }),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ));}
    );
  }

  Set<Circle> circles = Set.from([
    Circle(
      circleId: CircleId('11'),
      center: LatLng(Center_latitude, Center_longitude),
      radius: raduis,
      strokeWidth: 2,
      strokeColor: CricleMap,
    )
  ]);

  var Markers = HashSet<Marker>();

  Future openmessageOUTLOCPhoneSuccess(context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.all(2),
        content: Text(
          'لم يتم التسجيل لست بموقع الشركه',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.redAccent),
        ),
      ));
  Future openmessageINLOCSuccess(context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.all(2),
        content: Text(
          'تم التسجيل',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ));
  Future openmessageNOTRegSuccess(context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.all(2),
        content: Text(
          'أختر نوع التسجيل',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ));
}


