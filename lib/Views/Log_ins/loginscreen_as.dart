import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:phsio_ins/Consts/Consts.dart';
import 'package:phsio_ins/Refacetered/refactered.dart';
import 'package:phsio_ins/Views/Log_ins/loginscreen.dart';

class LoginAs extends StatelessWidget {
  const LoginAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LogRegAsScr(
        status: "Login As:",
        titile: "Welcome\nBack,",
        firstelevated: GestureDetector(
          onTap: () {
            Get.to(LogInScreen());
          },
          child: Container(
            decoration: firstboxdecoration,
            height: 70,
            width: 315,
            child: Center(
              child: Text("Physiotherapist", style: buttontextstyle),
            ),
          ),
        ),
        secondelevated: GestureDetector(
          onTap: () {
            Get.to(LogInScreen());
          },
          child: Container(
            decoration: buttondecorationWithShadow,
            height: 70,
            width: 315,
            child: Center(
              child: Text("Institute", style: buttontextstyle),
            ),
          ),
        ),
      ),
    );
  }
}
