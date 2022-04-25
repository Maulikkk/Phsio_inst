import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phsio_ins/Consts/Consts.dart';

// ignore: must_be_immutable
class LogRegAsScr extends StatelessWidget {
  String titile;
  String status;
  GestureDetector firstelevated;
  GestureDetector secondelevated;

  LogRegAsScr(
      {Key? key,
      required this.titile,
      required this.status,
      required this.firstelevated,
      required this.secondelevated})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            child: SvgPicture.asset(
              'images/BGP1.svg',
              width: MediaQuery.of(context).size.width,
            ),
            top: 50,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            color: const Color(0xff9382ff),
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
            child: Text(titile, style: titlestyle),
          ),
          Positioned(
            // top: 447,
            bottom: 300.0,
            left: 30,
            child: Text(status, style: buttontextstyle),
          ),
          Positioned(bottom: 200.00, child: firstelevated),
          Positioned(bottom: 100.0, child: secondelevated),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  String title;
  // ignore: use_key_in_widget_constructors
  BottomButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            title,
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
    );
  }
}
