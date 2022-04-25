import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:phsio_ins/Consts/consts.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                                  'Notification',
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
              ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('images/Rectangle8.svg'),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Notification Title Goes Here",
                                  style: ansStyle,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet\nadipscing nostrud",
                                  style: queStyle,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          color: primarycolor,
                          height: 1,
                          width: MediaQuery.of(context).size.width - 60,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
