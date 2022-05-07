import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:phsio_ins/Consts/consts.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  static List<String> items = [
    'Notification Title Goes Here',
    'Notification Title Goes Here1',
    'Notification Title Goes Here1',
    'Notification Title Goes Here1',
    'Notification Title Goes Here2',
  ];
  static List<String> description = [
    'Lorem ipsum dolor sit amet\nadipscing nostrud',
    'Lorem ipsum dolor sit amet\nadipscing nostrud',
    'Lorem ipsum dolor sit amet\nadipscing nostrud',
    'Lorem ipsum dolor sit amet\nadipscing nostrud',
    'Lorem ipsum dolor sit amet\nadipscing nostrud',
  ];
  static List<SvgPicture> imagee = [
    SvgPicture.asset("images/Rectangle8.svg"),
    SvgPicture.asset("images/Rectangle8.svg"),
    SvgPicture.asset("images/Rectangle8.svg"),
    SvgPicture.asset("images/Rectangle8.svg"),
    SvgPicture.asset("images/Rectangle8.svg"),
  ];
  Future refresh() async {
    // final url = Uri.parse('notification API Goes Here');
    // final response = await http.get(url);
    // if (response.statusCode == 200) {
    //   final List newItems = json.decode(response.body);
    // }
    setState(() {
      items = [
        'Title Updated',
        'Title Updated',
        'Title Updated',
        'Title Updated',
        'Title Updated',
      ];
      description = [
        'Description Updated',
        'Description Updated',
        'Description Updated',
        'Description Updated',
        'Description Updated',
        'Description Updated',
      ];
    });
  }

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
              items.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : RefreshIndicator(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: items.length,

                        //     final item = items[index];

                        itemBuilder: (BuildContext context, int index) {
                          final item = items[index];
                          final descriptionn = description[index];
                          final imagge = imagee[index];
                          return Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 30, right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    imagge,
                                    // SvgPicture.asset('images/Rectangle8.svg'),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          item,
                                          style: ansStyle,
                                        ),
                                        Text(
                                          descriptionn,
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

                      // ListView.builder(
                      //   shrinkWrap: true,
                      //   itemCount: items.length,
                      //   itemBuilder: (BuildContext context, int index) {
                      //     final item = items[index];
                      //     return ListTile(
                      //       title: Text(item),
                      //     );
                      //   },
                      // ),
                      onRefresh: refresh)
            ],
          ),
        ),
      )),
    );
  }
}
