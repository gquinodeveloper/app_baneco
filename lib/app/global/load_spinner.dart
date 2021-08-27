import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadSpinner {
  static show() {
    Get.dialog(
      Container(
        alignment: Alignment.center,
        height: 40.0,
        padding: EdgeInsets.symmetric(horizontal: 60.0),
        child: CircularProgressIndicator(
          color: Colors.pink,
        ),
      ),
      barrierDismissible: false,
      barrierColor: Colors.black26,
    );
  }

  static hide() {
    Get.back();
  }
}
