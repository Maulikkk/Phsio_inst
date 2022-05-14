// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phsio_ins/Consts/consts.dart';
import 'package:phsio_ins/Views/Screens/Services/create_webinar.dart';

import 'package:phsio_ins/get/image_controller.dart';

//TODO Do improvemets in Cropping
class CropImg extends StatefulWidget {
  const CropImg({Key key}) : super(key: key);

  @override
  _CropImgState createState() => _CropImgState();
}

class _CropImgState extends State<CropImg> {
  final getxImage = Get.put(CropImge());
  var countDown = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6756CF),
        title: Text("Cropper "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 100,
                width: 480,
                // color: whiteColor,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff6756CF)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: GestureDetector(
                  onTap: () {
                    getxImage.selectImage(ImageSource.gallery);
                  },
                  child: Image(
                    image: getxImage.croppedFilee != null
                        ? (FileImage(
                            getxImage.croppedFilee,

                            // fit: BoxFit.fitWidth,
                          ))
                        : AssetImage(
                            'assets/images/upload1.png',
                          ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "$countDown",
            style: TextStyle(color: whiteColor),
          ),
          // if (getxImage.croppedFilee == null)
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    getxImage.cropImagee();
                    setState(() {
                      countDown--;
                    });
                  },
                  backgroundColor: Color(0xff6756CF),
                  tooltip: 'Crop',
                  heroTag: 'Croppe',
                  child: const Icon(Icons.crop),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Get.to(CreateWebiunar());
                  },
                  backgroundColor: Color(0xff6756CF),
                  tooltip: 'Done',
                  heroTag: 'Cropped Image',
                  child: const Icon(Icons.done),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
