import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';
import 'package:phsio_ins/Consts/consts.dart';
import 'dart:core';

import 'package:phsio_ins/Refacetered/refactered.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class createWorkShop extends StatefulWidget {
  @override
  State<createWorkShop> createState() => PhysioRegFormState();
}

class PhysioRegFormState extends State<createWorkShop> {
  final DateTime endDate = DateTime.now();
  final DateTime startDate = DateTime.now();
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime = TimeOfDay.now();

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
                                  'Create Workshop',
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
                        "Institute",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'MNO',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Total Days (In Hours)",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: '7 ',
                          keyboardtypee: TextInputType.number,
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Course Details",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Lorem ipsum dolor sit amet nostru...',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Providing with Course",
                        style: queStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: EnterDataTextfield(
                          hinttext: 'Recordings, Reference Materials, Wri...',
                          hintestyle: ansStyle,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Resource Person",
                        style: ansStyle,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: DropdownButton<String>(
                                underline: Container(
                                  height: 1,
                                  color: Colors.deepPurpleAccent,
                                ),
                                style: ansStyle,
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                ),
                                value: dropdownValue,
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 134,
                              child: EnterDataTextfield(
                                hinttext: 'John Doe',
                                hintestyle: ansStyle,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Start Date",
                                style: queStyle,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 112,
                                    child: TextField(
                                        keyboardType: TextInputType.none,
                                        readOnly: true,
                                        controller: startdateController,
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: whiteColor)),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: whiteColor)),
                                          hintText: myFormat.format(startDate),
                                          hintStyle: ansStyle,
                                        ),
                                        onTap: () {}),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.date_range_outlined),
                                    onPressed: () async {
                                      var date = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2100));
                                      startdateController.text =
                                          date.toString().substring(0, 10);
                                    },
                                  )
                                ],
                              ),
                              Container(
                                width: 145,
                                height: 1,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 5,
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "End Date",
                                style: queStyle,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 107,
                                    child: TextField(
                                        keyboardType: TextInputType.none,
                                        readOnly: true,
                                        controller: enddateController,
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: whiteColor)),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: whiteColor)),
                                          hintText: myFormat.format(endDate),
                                          hintStyle: ansStyle,
                                        ),
                                        onTap: () {}),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.date_range_outlined),
                                    onPressed: () async {
                                      var date = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2100));
                                      enddateController.text =
                                          date.toString().substring(0, 10);
                                    },
                                  )
                                ],
                              ),
                              Container(
                                width: 150,
                                height: 1,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Start Time",
                                style: queStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "${startTime.hour}:${startTime.minute}",
                                    style: ansStyle,
                                  ),
                                  SizedBox(
                                    width: 75,
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.access_time),
                                    onPressed: () {
                                      _startTime(context);
                                    },
                                  )
                                ],
                              ),
                              Container(
                                width: 148,
                                height: 1,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "End Time",
                                style: queStyle,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 101,
                                    child: Text(
                                      "${endTime.hour}:${endTime.minute}",
                                      style: ansStyle,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.access_time),
                                    onPressed: () {
                                      _endTime(context);
                                    },
                                  )
                                ],
                              ),
                              Container(
                                width: 150,
                                height: 1,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                        ],
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
                      BottomButton(title: 'Create Workshop'),
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

  _startTime(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: startTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != startTime) {
      setState(() {
        startTime = timeOfDay;
      });
    }
  }

  _endTime(BuildContext context) async {
    final TimeOfDay timeOfDay = await showTimePicker(
      context: context,
      initialTime: endTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != endTime) {
      setState(() {
        endTime = timeOfDay;
      });
    }
  }
}
