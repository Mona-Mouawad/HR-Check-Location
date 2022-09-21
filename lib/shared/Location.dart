

import 'dart:math';
import 'package:location/location.dart';
import 'package:hr/Screens/goINOUT_SignUp.dart';

Location location = new Location();
double? User_latitude ;
double? User_longitude ;
double raduis = 30 ;


// 30.143332814369042, 31.312216327976312  out loc
// 30.143254656448775, 31.31265727915261  in my  loc
//LatLng(30.14449267331453, 31.292559101566972)
// الشركة
// 30.161091327832157, 31.340804780357765

double Center_latitude =  30.161091327832157 ;
double Center_longitude = 31.340804780357765 ;
bool ? InLocation ;

storeLocation() async {
  location.onLocationChanged.listen((LocationData currentLocation) {
    User_latitude = currentLocation.latitude;
    User_longitude = currentLocation.longitude;
    print(' $User_latitude   ,   $User_longitude');
  });
}

arePointsNear() async {
  double distanceBetweenTwoPoints = sqrt(pow((Center_latitude - User_latitude!), 2.0) + pow((Center_longitude -  User_longitude!), 2.0) );
  print("distanceBetweenTwoPoints  $distanceBetweenTwoPoints") ;
  if (distanceBetweenTwoPoints <= (raduis/100000) ){  ////  25*0.000621371192 miles
    print (true) ;
    print ((raduis/100000)) ;
    InLocation =true ;
    return true;
  }
 else {
    print(false);
    print((raduis / 100000));
    InLocation =false ;
    return false;
  }
}
