// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:phsio_ins/Consts/Consts.dart';
import 'package:phsio_ins/Views/Log_ins/loginscreen.dart';
import 'package:phsio_ins/Views/Log_ins/homepage.dart';
import 'package:phsio_ins/Views/Screens/notifications.dart';
import 'package:phsio_ins/Views/Screens/registration_form.dart';
import 'package:phsio_ins/Views/splash_screen.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(
    theme: ThemeData(primaryColor: primarycolor),
    debugShowCheckedModeBanner: false,
    //TODO: Set Loginas As HomePage Lateron
    home: SplashScreen(),
  ));
}
