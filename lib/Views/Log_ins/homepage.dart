import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:phsio_ins/Consts/Consts.dart';
import 'package:phsio_ins/Refacetered/refactered.dart';
import 'package:phsio_ins/Views/Log_ins/login_scr_for_ins.dart';
import 'package:phsio_ins/Views/Log_ins/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

String finalemail;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO create splash Screen

  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedEmail = sharedPreferences.getString('email');
    setState(() {
      finalemail = obtainedEmail;
    });
    print(finalemail);
  }

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
            Get.to(LogInScreenForIns());
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
