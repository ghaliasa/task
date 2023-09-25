import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:task/Component/basic_row.dart';

import '../Component/basic_container.dart';
import '../Component/basic_text_field.dart';
import '../Component/basic_button.dart';
import '../Controller/register_controller.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

bool securetext = true;

class _RegisterState extends State<Register> {
  final RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Colors.purple.shade300, Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: ListView(
              children: [
                BasicContainer(
                  text: "Register",
                  width: MediaQuery.of(context).size.width / 2,
                  font: 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 16,
                ),
                BasicTextField(
                  nameController: registerController.nameController,
                  text: 'Full Name',
                  gestureDetector: GestureDetector(
                    child: Icon(
                      Icons.person,
                      color: Colors.purple.shade400,
                    ),
                  ),
                  securetext: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 16,
                ),
                BasicTextField(
                  nameController: registerController.numController,
                  text: 'Number',
                  gestureDetector: GestureDetector(
                    child: Icon(
                      Icons.phone,
                      color: Colors.purple.shade400,
                    ),
                  ),
                  securetext: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 16,
                ),
                Obx(
                  () => BasicTextField(
                    nameController: registerController.passController,
                    text: 'Password',
                    gestureDetector: GestureDetector(
                      onTap: () {
                        registerController.securetext3.value =
                            !registerController.securetext3.value;
                      },
                      child: Icon(
                        registerController.securetext3.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    securetext: registerController.securetext3.value,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 16,
                ),
                Obx(
                  () => BasicTextField(
                    nameController: registerController.passConfirmController,
                    text: 'Confirm Password',
                    gestureDetector: GestureDetector(
                      onTap: () {
                        registerController.securetext2.value =
                            !registerController.securetext2.value;
                      },
                      child: Icon(
                        registerController.securetext2.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    securetext: registerController.securetext2.value,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                ),
                BasicRow(
                  text: "Select Image",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 16,
                ),
                BasicButton(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 21,
                  text: "submit",
                  onPressed: () {
                    if ((registerController.nameController.text.isEmpty ||
                        registerController.numController.text.isEmpty ||
                        registerController.passController.text.isEmpty ||
                        registerController
                            .passConfirmController.text.isEmpty)) {
                      MotionToast.error(
                        description:
                            const Text("Please complete your information"),
                        title: const Text("Fail"),
                      ).show(context);
                    } else if (registerController.passController.text !=
                        registerController.passConfirmController.text) {
                      MotionToast.error(
                        description: const Text("Reconfirm password"),
                        title: const Text("Fail"),
                      ).show(context);
                    } else {
                      clearTextFields();
                      Get.toNamed('/login');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void clearTextFields() {
    registerController.nameController.clear();
    registerController.numController.clear();
    registerController.passController.clear();
    registerController.passConfirmController.clear();
  }
}
