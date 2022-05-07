import 'package:flutter/material.dart';

FontWeight rfontWeight = FontWeight.w400;
FontWeight sfontWeight = FontWeight.w600;
FontWeight mfontWeight = FontWeight.w500;
FontWeight bfontWeight = FontWeight.w700;

Color fadegrey = Colors.grey.withOpacity(0.2);

const Color primarycolor = Color(0xff6756CF);

TextStyle queStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: queColor,
  decoration: TextDecoration.none,
);

TextStyle boldprimaryStyle = TextStyle(
  color: primarycolor,
  fontFamily: 'Montserrat',
  fontWeight: bfontWeight,
  fontSize: 22.0,
  decoration: TextDecoration.none,
);
TextStyle ansStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: enterusernamecolor,
  decoration: TextDecoration.none,
);

TextStyle buttontextstyle = TextStyle(
  color: primarycolor,
  fontFamily: 'Montserrat',
  fontWeight: sfontWeight,
  fontSize: 22.0,
  decoration: TextDecoration.none,
);

BoxDecoration buttondecorationWithShadow = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 7,
      offset: Offset(2, 5),
    )
  ],
  borderRadius: BorderRadius.circular(5),
);

BoxDecoration firstboxdecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  border: Border.all(color: Color(0xff6756CF), width: 2),
);

TextStyle titlestyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Montserrat',
  fontWeight: bfontWeight,
  fontSize: 36.0,
  decoration: TextDecoration.none,
);

Color whiteColor = Colors.white;
Color blackColor = Colors.black;
Color queColor = Color(0xff737373);
Color enterusernamecolor = Color.fromARGB(255, 15, 11, 11);

// ignore: non_constant_identifier_names

// ignore: must_be_immutable
class EnterDataTextfield extends StatelessWidget {
  TextStyle hintestyle;
  String hinttext;
  TextInputType keyboardtypee;
  EnterDataTextfield(
      {Key key, this.hinttext, this.keyboardtypee, this.hintestyle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardtypee,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: hintestyle,
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: primarycolor)),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: primarycolor)),
        focusColor: primarycolor,
      ),
      cursorColor: primarycolor,
      style: ansStyle,
    );
  }
}

TextField passwordtextfield = TextField(
  obscureText: true,
  obscuringCharacter: '*',
  decoration: InputDecoration(
    hintText: '********',
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: primarycolor)),
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: primarycolor)),
    focusColor: primarycolor,
  ),
  cursorColor: primarycolor,
  style: ansStyle,
);
