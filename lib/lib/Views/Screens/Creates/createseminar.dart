import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';
import 'package:phsio_ins/Consts/consts.dart';
import 'dart:core';

import 'package:phsio_ins/Refacetered/refactered.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class createSeminar extends StatefulWidget {
  @override
  State<createSeminar> createState() => PhysioRegFormState();
}

class PhysioRegFormState extends State<createSeminar> {
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
                                  'Create Seminar',
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
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'images/Rectangle9.png',
                                )),
                            borderRadius: BorderRadius.circular(5),
                            color: primarycolor),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Title",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Lorem Ipsum',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Key Learning",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Merits of Physiotherapy',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Resource Person",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Physiotherapy Points - Haresh Singhal',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Who Can Attend?",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Students, Professors',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Fees",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: '2500/-',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Other Note",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'None',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Date and Time",
                        style: queStyle,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 90,
                              child: TextField(
                                  keyboardType: TextInputType.none,
                                  readOnly: true,
                                  controller: startdateController,
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: whiteColor)),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: whiteColor)),
                                    hintText: myFormat.format(importantDate),
                                    hintStyle: ansStyle,
                                  ),
                                  onTap: () async {
                                    var date = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2100));
                                    startdateController.text =
                                        date.toString().substring(0, 10);
                                  }),
                            ),
                            TextButton(
                              onPressed: () {
                                _importantTime(context);
                              },
                              child: Text(
                                " |  ${impoetantTime.hour}:${impoetantTime.minute}",
                                style: ansStyle,
                              ),
                            ),
                            SizedBox(
                              width: 86,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: primarycolor),
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Venue",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Government Medical College, Bhavn...',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Contact Details",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: '6584712359',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      BottomButton(title: 'Create Seminar'),
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

  _importantTime(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: impoetantTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    // ignore: unrelated_type_equality_checks
    if (timeOfDay != ansStyle && timeOfDay != impoetantTime) {
      setState(() {
        impoetantTime = timeOfDay;
      });
    }
  }
}
