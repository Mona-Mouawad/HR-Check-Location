import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  backgroundColor: Colors.white,
  //   fontFamily: 'KaiseiTokumin',
  appBarTheme: AppBarTheme(
      color: Colors.blue,
      //  centerTitle: true,
      // color: Colors.white,
      elevation: 10,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.blue,
      )),
  scaffoldBackgroundColor: Colors.white,

);
