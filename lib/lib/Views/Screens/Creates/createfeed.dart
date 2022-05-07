import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:phsio_ins/Consts/consts.dart';
import 'package:phsio_ins/Views/Screens/Creates/create_webinar.dart';
import 'package:phsio_ins/Views/Screens/Creates/create_workshop.dart';
import 'package:phsio_ins/Views/Screens/Creates/createconference.dart';
import 'package:phsio_ins/Views/Screens/Creates/createseminar.dart';

class CreateFeed extends StatelessWidget {
  const CreateFeed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  'images/rectangle5.svg',
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 66),
                  child: Text(
                    "Create Feed",
                    style: TextStyle(
                      color: whiteColor,
                      fontFamily: 'Montserrat',
                      fontWeight: sfontWeight,
                      fontSize: 22.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 21, right: 19),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.of(context).size.width - 30, 70.0),
                          primary: whiteColor,
                          shadowColor: whiteColor,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Get.to(createWorkShop());
                        },
                        child: Container(
                          decoration: firstboxdecoration,
                          height: 70,
                          width: 315,
                          child: Center(
                            child: Text("Workshop", style: buttontextstyle),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 21, right: 19),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.of(context).size.width - 30, 70.0),
                          primary: whiteColor,
                          shadowColor: whiteColor,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Get.to(createConference());
                        },
                        child: GestureDetector(
                          onTap: () {
                            Get.to(createConference());
                          },
                          child: Container(
                            decoration: buttondecorationWithShadow,
                            height: 70,
                            width: 315,
                            child: Center(
                              child: Text("Conference", style: buttontextstyle),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 21, right: 19),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.of(context).size.width - 30, 70.0),
                          primary: whiteColor,
                          shadowColor: whiteColor,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Get.to(CreateWebiunar());
                        },
                        child: GestureDetector(
                          onTap: () {
                            Get.to(CreateWebiunar());
                          },
                          child: Container(
                            decoration: buttondecorationWithShadow,
                            height: 70,
                            width: 315,
                            child: Center(
                              child: Text("Webinar", style: buttontextstyle),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 21, right: 19),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.of(context).size.width - 30, 70.0),
                          primary: whiteColor,
                          shadowColor: whiteColor,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Get.to(createSeminar());
                        },
                        child: GestureDetector(
                          onTap: () {
                            Get.to(createSeminar());
                          },
                          child: Container(
                            decoration: buttondecorationWithShadow,
                            height: 70,
                            width: 315,
                            child: Center(
                              child: Text("Seminar", style: buttontextstyle),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
