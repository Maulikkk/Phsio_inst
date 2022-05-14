import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

import 'package:phsio_ins/Consts/consts.dart';

import 'package:phsio_ins/Views/Screens/registerscreen_as.dart';

import 'package:phsio_ins/Views/Screens/registration_form.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Models/login_model.dart';
import '../Screens/Services/createfeed.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  LoginRequestModel requestModel;

  // ignore: prefer_typing_uninitialized_variables

  @override
  void initState() {
    super.initState();
    requestModel = LoginRequestModel();
  }

  final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                Form(
                  key: globalFormKey,
                  child: Padding(
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
                          controller: emailController,
                          onSaved: (input) => requestModel.email = input,
                          validator: (value) {
                            if (!emailRegex.hasMatch(value)) {
                              return 'Please enter valid email';
                            }
                            return null;
                          },
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
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Password",
                          style: queStyle,
                        ),
                        TextFormField(
                          key: _passwordFieldKey,
                          onSaved: (input) => requestModel.password = input,
                          validator: (input) => input.length < 7
                              ? "Password should be more than 8 characters"
                              : null,
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
                              onTap: () async {
                                final SharedPreferences sharedPreferences =
                                    await SharedPreferences.getInstance();
                                sharedPreferences.setString(
                                    'email', emailController.text);
                                if (validateAndSave()) {
                                  print(requestModel.toJson());

                                  Get.to(() => CreateFeed());
                                } else {
                                  Get.snackbar("Invalid Info",
                                      "Plaese Enter Valid Inputs");
                                }

                                //TODO go to create feed asyncly
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
                            Get.to(RegisterAs());
                          },
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(physioRegForm());
                              },
                              child: Text(
                                'Don\'t have an account? Register',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
