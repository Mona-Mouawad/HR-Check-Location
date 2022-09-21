import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String token = '';

Widget defultButton(
        {required String text,
        double width = double.infinity,
        double height = 50,
        IconData? icon,
          Color color = Colors.blue ,
        required ontap}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: color),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Row(
              children: [
                Spacer(),
                Text(
                  text,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Spacer(),
                Icon(
                  icon,
                  color: Colors.white,size: 18,
                )
              ],
            ),
          ),
          onPressed: ontap),
    );

void NavigatorTo(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));

void NavigatorAndFinish(context, Widget) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => Widget), (route) {
    return false;
  });
}

Widget myDivited() => Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 2),
      child: Container(
        width: double.infinity,
        height: .3,
        color: Colors.grey,
      ),
    );

Widget borderContainer(
        {required text,
        Color color = Colors.black,
        context,
        IconData? icon,
        double Size = 12,
        ontap}) =>
    InkWell(
      onTap: ontap!,
      child: Container(
          width: MediaQuery.of(context).size.width * .7,
          height: 46,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.black, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: Row(
              children: [
                Text(
                  text.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.bold,
                      fontSize: Size),
                ),
                Spacer(),
                Icon(icon),
              ],
            ),
          )),
    );


Widget bottomSheet =  Padding(
  padding: const EdgeInsets.symmetric(vertical:5 , horizontal: 8 ),
  child: Container(
    //  color: ColorManager.white.withOpacity(0.1),
    child: Row(
      children: [
        Text(
          'By: Mona Mouawad',
          style: TextStyle(fontSize: 10),
        ),
        Spacer(),
        SizedBox(
          width: 5,
        ),
        Text(
          'mona.mouawad21@gmail.com',
          style: TextStyle(fontSize: 10),
        ),
      ],
    ),
  ),
) ;
