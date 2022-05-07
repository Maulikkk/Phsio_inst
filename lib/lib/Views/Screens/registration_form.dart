// ignore_for_file: unused_element

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:phsio_ins/Consts/consts.dart';
import 'package:phsio_ins/Views/Log_ins/loginscreen.dart';
import 'package:phsio_ins/Views/Log_ins/loginscreen_as.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class physioRegForm extends StatefulWidget {
  @override
  State<physioRegForm> createState() => PhysioRegFormState();
}

class PhysioRegFormState extends State<physioRegForm> {
  final DateTime cuttentDate = DateTime.now();
  var myFormat = DateFormat('dd/MM/yyyy');

  String dropdownValue = 'Mr.';
  var items = [
    'Mr.',
    'MRs.',
    'Miss',
  ];
  final dateController = TextEditingController();

  File image;

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  Future _selectImage(ImageSource source) async {
    // File image;

    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      final finalImage = File(image.path);
      setState(() => this.image = finalImage);
    } on PlatformException catch (e) {
      print("exeption occured :$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
            body: Container(
          height: MediaQuery.of(context).size.height,
          color: whiteColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 290,
                  child: Container(
                    height: 1189,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
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
                                    child: SvgPicture.asset(
                                        'images/rectangle5.svg',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        semanticsLabel: 'rectangle5')),
                                Positioned(
                                    top: 63,
                                    left: 78,
                                    child: Text(
                                      'Register as a\nPhysiotherapist',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 22,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: sfontWeight,
                                          height: 1),
                                    )),
                                Positioned(
                                  top: 68,
                                  left: 35,
                                  child: Container(
                                    width: 33,
                                    height: 23.428543090820312,
                                    decoration: BoxDecoration(
                                        // color: Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 6.040173530578613,
                                          left: 8.499988555908203,
                                          child: SizedBox(
                                            width: 16.000011444091797,
                                            height: 11.348193168640137,
                                            child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: SizedBox(
                                                    width: 16.000011444091797,
                                                    height: 11.348193168640137,
                                                    child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Get.to(
                                                                  HomePage());
                                                            },
                                                            child: SvgPicture.asset(
                                                                'assets/images/vector.svg',
                                                                semanticsLabel:
                                                                    'vector'),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            child: Stack(children: <Widget>[
                          Positioned(
                              top: 190,
                              left: 148,
                              child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.10999999940395355),
                                          offset: Offset(2, 3),
                                          blurRadius: 6)
                                    ],
                                    image: DecorationImage(
                                        image: image != null
                                            ? (FileImage(
                                                image,
                                                // fit: BoxFit.fitWidth,
                                              ))
                                            : AssetImage(
                                                'assets/images/Ellipse1.png'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(
                                      Radius.elliptical(80, 80),
                                    ),
                                  ))),
                        ])),
                        Positioned(
                            top: 244,
                            left: 207,
                            child: //Mask holder Template
                                SizedBox(
                              width: 25,
                              height: 25,
                              child: ClipOval(
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 3,
                                      left: 4,
                                      child: GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                // ignore: prefer_const_literals_to_create_immutables
                                                return Wrap(children: [
                                                  ListTile(
                                                    onTap: () {
                                                      _selectImage(
                                                          ImageSource.camera);
                                                      Get.back();
                                                    },
                                                    leading: Icon(Icons.camera),
                                                    title: Text('Camera'),
                                                  ),
                                                  ListTile(
                                                    onTap: () {
                                                      _selectImage(
                                                          ImageSource.gallery);
                                                      Get.back();
                                                    },
                                                    leading: Icon(Icons.image),
                                                    title: Text('Gallery'),
                                                  ),
                                                ]);
                                              });
                                        },
                                        child: Container(
                                            width: 18,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/Camera1.png'),
                                                  fit: BoxFit.fitWidth),
                                            )),
                                      )),
                                ]),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full Name",
                          style: queStyle,
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
                                  hinttext: 'Dave Smith',
                                  hintestyle: ansStyle,
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Date of Birth",
                          style: queStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 108,
                              child: TextField(
                                  keyboardType: TextInputType.none,
                                  readOnly: true,
                                  controller: dateController,
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: primarycolor)),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: whiteColor)),
                                    hintText: myFormat.format(cuttentDate),
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
                                dateController.text =
                                    date.toString().substring(0, 10);
                              },
                            )
                          ],
                        ),
                        Container(
                          height: 1,
                          color: Colors.deepPurpleAccent,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Designation",
                          style: queStyle,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: EnterDataTextfield(
                            hinttext: 'Senior Doctor',
                            hintestyle: ansStyle,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Education",
                          style: queStyle,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: EnterDataTextfield(
                            hinttext: 'MBBS, MS',
                            hintestyle: ansStyle,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Registration Number",
                          style: queStyle,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: EnterDataTextfield(
                            hinttext: '100125587462',
                            keyboardtypee: TextInputType.phone,
                            hintestyle: ansStyle,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Contact Number",
                          style: queStyle,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: EnterDataTextfield(
                            hinttext: '9876543210',
                            keyboardtypee: TextInputType.phone,
                            hintestyle: ansStyle,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Alternate Contact Number",
                          style: queStyle,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: EnterDataTextfield(
                            hinttext: '8765432109',
                            keyboardtypee: TextInputType.phone,
                            hintestyle: ansStyle,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Email Address",
                          style: queStyle,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: EnterDataTextfield(
                            hinttext: 'dummytext@gmail.com',
                            keyboardtypee: TextInputType.emailAddress,
                            hintestyle: ansStyle,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Address",
                          style: queStyle,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: EnterDataTextfield(
                            hinttext: '1, Dummy Society, Behind Lorem Ip...',
                            hintestyle: ansStyle,
                          ),
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
                              onTap: () {},
                              child: Text(
                                'Register',
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
                          onTap: () {},
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(LogInScreen());
                              },
                              child: Text(
                                'Already have an account? Login',
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
      ),
    );
  }
}
