import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';
import 'package:phsio_ins/Consts/consts.dart';
import 'dart:core';

import 'package:phsio_ins/Refacetered/refactered.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class createWebiunar extends StatefulWidget {
  @override
  State<createWebiunar> createState() => PhysioRegFormState();
}

class PhysioRegFormState extends State<createWebiunar> {
  final DateTime importantDate = DateTime.now();
  TimeOfDay impoetantTime = TimeOfDay.now();

  var myFormat = DateFormat('dd/MM/yyyy');

  String dropdownValue = 'Mr.';
  var items = [
    'Mr.',
    'MRs.',
    'Miss',
  ];
  final enddateController = TextEditingController();
  final startdateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    enddateController.dispose();
    startdateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator PhysioregistrationformWidget - FRAME
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        color: whiteColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 190,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: SvgPicture.asset('images/rectangle5.svg',
                                    width: MediaQuery.of(context).size.width,
                                    semanticsLabel: 'rectangle5')),
                            Positioned(
                                top: 63,
                                left: 78,
                                child: Text(
                                  'Create Webinar',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: sfontWeight,
                                      height: 1),
                                )),
                            Positioned(
                              top: 65,
                              left: 50,
                              child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                  // Get.to(LoginAs());
                                },
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Picture",
                        style: queStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: primarycolor),
                            borderRadius: BorderRadius.circular(5),
                            color: whiteColor),
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(
                            'images/upload1.svg',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Title',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Key Learning',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Recource Person',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Who Can Attend?',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Fees',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Other Note',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Date and Time',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Venue',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Contact Details',
                          hintestyle: queStyle,
                        ),
                      ),
                      SizedBox(
                        height: 58,
                      ),
                      BottomButton(title: 'Create Webinar'),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
