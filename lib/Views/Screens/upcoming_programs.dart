import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Consts/consts.dart';
import '../../Refacetered/refactered.dart';

class UpcomingPrograms extends StatelessWidget {
  const UpcomingPrograms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: whiteColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  'Upcoming Program',
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
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 30, bottom: 20),
                child: Container(
                  height: 140,
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Title: '),
                        TextSpan(text: 'ABC Program', style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Key Learning: '),
                        TextSpan(
                            text:
                                'ABC Program\nis basically lorem ipsum\ndolor sit amet, adispcing\nnostrud',
                            style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Resource Person: '),
                        TextSpan(text: 'Prof. Rao', style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Who can Attend: '),
                        TextSpan(text: 'Students, Professors', style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Fees: '),
                        TextSpan(text: '2500/- INR', style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Title: '),
                        TextSpan(text: 'ABC Program', style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Date and Time: '),
                        TextSpan(text: '10/12/2021 | 12:00 PM', style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Venue: '),
                        TextSpan(
                            text: 'Nirma University,\nAhmedabad',
                            style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(style: ansStyle, children: [
                        TextSpan(text: 'Contact Details: '),
                        TextSpan(text: '9876543210', style: queStyle)
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: firstboxdecoration,
                          height: 50,
                          width: 142,
                          child: Center(
                            child: Text("Apply", style: boldprimaryStyle),
                          ),
                        ),
                        Container(
                          decoration: firstboxdecoration,
                          height: 50,
                          width: 142,
                          child: Center(
                            child: Text("Question", style: boldprimaryStyle),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    BottomButton(
                      title: 'Interested',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
