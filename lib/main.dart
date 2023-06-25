import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:planet_app/view/home_screen.dart';
import 'package:planet_app/view/info_screen.dart';


void main()
{
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(p0) => const HomeScreen(),
      'info':(p0) => const InfoScreen(),
    },
  ));
}