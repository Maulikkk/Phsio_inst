import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:phsio_ins/Consts/Consts.dart';
import 'package:phsio_ins/Views/Log_ins/loginscreen_as.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(
    theme: ThemeData(primaryColor: primarycolor),
    //TODO: Set Loginas As HomePage Lateron
    home: LoginAs(),
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
