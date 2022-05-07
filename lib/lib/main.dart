// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:phsio_ins/Consts/Consts.dart';
import 'package:phsio_ins/Views/Log_ins/loginscreen.dart';
import 'package:phsio_ins/Views/Log_ins/loginscreen_as.dart';
import 'package:phsio_ins/Views/Log_ins/registerscreen_as.dart';
import 'package:phsio_ins/Views/Screens/Creates/create_webinar.dart';
import 'package:phsio_ins/Views/Screens/Creates/cropimageScr.dart';
import 'package:phsio_ins/Views/Screens/notifications.dart';
import 'package:phsio_ins/Views/Screens/registration_form.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(
    theme: ThemeData(primaryColor: primarycolor),
    debugShowCheckedModeBanner: false,
    //TODO: Set Loginas As HomePage Lateron
    home: CreateWebiunar(),
  ));
}

//cd ~
// rm -rf .gradle


// Future<void> main() async {
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//   runApp(MainHomePage());
// }
