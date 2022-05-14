import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:phsio_ins/Consts/Consts.dart';
import 'package:phsio_ins/Refacetered/refactered.dart';
import 'package:phsio_ins/Views/Screens/institute_registration_form.dart';
import 'package:phsio_ins/Views/Screens/registration_form.dart';

class RegisterAs extends StatelessWidget {
  const RegisterAs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LogRegAsScr(
      titile: "Logo",
      status: "Register As:",
      firstelevated: GestureDetector(
        onTap: () {
          Get.to(physioRegForm());
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
          Get.to(InstituteRegForm());
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
    );
  }
}
