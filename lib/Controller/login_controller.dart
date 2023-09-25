import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var securetext = true.obs;
  var securetext1 = true.obs;

  final numController = TextEditingController();
  final passController = TextEditingController();

  @override
  void onClose() {
    numController.dispose();
    passController.dispose();
    super.onClose();
  }
}
