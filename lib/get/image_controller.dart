import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class CropImge extends GetxController {
  var imageFiles = <File>[].obs;
  File image;
  Future selectImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      final finalImage = File(image.path);
      this.image = finalImage;
    } on PlatformException catch (e) {
      print("exeption occured :$e");
    }
    update();
  }

  File newCroppedFile;
  File croppedFilee;
  Future<void> cropImagee() async {
    final croppedFile = await ImageCropper().cropImage(
      aspectRatio: CropAspectRatio(ratioX: 4, ratioY: 1),
      sourcePath: image.path,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        )
      ],
    );
    if (croppedFile != null) {
      croppedFilee = File(croppedFile.path);
    }
    newCroppedFile = croppedFilee;
    update();
  }
}
