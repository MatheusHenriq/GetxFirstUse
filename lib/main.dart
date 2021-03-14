import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmyimplementation/src/controller/bindings.dart';
import 'package:getxmyimplementation/src/views/homepage.dart';


void main() {
  runApp((GetMaterialApp(
    initialBinding: HeroesBinding(),
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  )));
}

