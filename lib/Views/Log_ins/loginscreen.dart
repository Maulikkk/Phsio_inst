import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

import 'package:phsio_ins/Consts/consts.dart';
import 'package:phsio_ins/Models/loginmodel.dart';
import 'package:phsio_ins/Views/Log_ins/registerscreen_as.dart';
import 'package:phsio_ins/Views/Screens/Creates/createfeed.dart';
import 'package:phsio_ins/Views/Screens/registration_form.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late LoginRequestModel requestModel;

  @override
  void initState() {
    super.initState();
    requestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: const Color(0xff9382ff),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SvgPicture.asset(
                    'images/BGP1.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  top: -20,
                  child: SvgPicture.asset(
                    'images/BGP2.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 30,
                  child: Text("Welcome\nBack,", style: titlestyle),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Login with your credentials",
                    style: buttontextstyle,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Username",
                    style: queStyle,
                  ),

                  TextFormField(
                    onSaved: (input) => requestModel.email = input,
                    decoration: InputDecoration(
                      hintText: "dave Smith",
                      hintStyle: ansStyle,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primarycolor)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primarycolor)),
                      focusColor: primarycolor,
                    ),
                  ),
                  // EnterDataTextfield(
                  //   hinttext: 'dave Smith',
                  //   hintestyle: ansStyle,
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Password",
                    style: queStyle,
                  ),
                  TextFormField(
                    onSaved: (input) => requestModel.password = input,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: '********',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primarycolor)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primarycolor)),
                      focusColor: primarycolor,
                    ),
                    cursorColor: primarycolor,
                    style: ansStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                      ),
                      color: Color.fromRGBO(103, 86, 207, 1),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(CreateFeed());
                        },
                        child: Text(
                          'LOGIN',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w700,
                              height: 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      print(requestModel.toJson());
                      Get.to(RegisterAs());
                    },
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(physioRegForm());
                        },
                        child: Text(
                          'Don’t have an account? Register',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Color.fromRGBO(103, 86, 207, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w600,
                              height: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
        // bool validateandsave() {
        //   final form = GlobalKey.
        //   if (form.validate()) {
        //     form.save();
        //     return true;
        //   }

        //     return false;

        // }
        );
  }
}
