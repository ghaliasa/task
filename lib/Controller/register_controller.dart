import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var securetext = true.obs;
  var securetext2 = true.obs;
  var securetext3 = true.obs;

  final nameController = TextEditingController();
  final numController = TextEditingController();
  final passController = TextEditingController();
  final passConfirmController = TextEditingController();

  @override
  void onClose() {
    nameController.dispose();
    numController.dispose();
    passController.dispose();
    passConfirmController.dispose();
    super.onClose();
  }
}
