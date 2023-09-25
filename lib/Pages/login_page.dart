import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:task/Component/basic_text_field.dart';
import 'package:task/Component/basic_button.dart';

import '../Component/basic_container.dart';
import '../Controller/login_controller.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

// TextEditingController numController = TextEditingController();
// TextEditingController passController = TextEditingController();
// bool securetext = true;
// bool securetext1 = true;

class _LoginState extends State<Login> {
  final LoginController loginController = Get.put(LoginController());
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
            padding: const EdgeInsets.only(top: 120.0),
            child: ListView(
              children: [
                BasicContainer(
                  text: "Login",
                  width: MediaQuery.of(context).size.width / 3,
                  font: 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 9,
                ),
                BasicTextField(
                  nameController: loginController.numController,
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
                  height: MediaQuery.of(context).size.height / 12,
                ),
                Obx(
                  () => BasicTextField(
                    nameController: loginController.passController,
                    text: 'Password',
                    gestureDetector: GestureDetector(
                      onTap: () {
                        loginController.securetext1.value =
                            !loginController.securetext1.value;
                      },
                      child: Icon(
                        loginController.securetext1.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.purple.shade400,
                      ),
                    ),
                    securetext: loginController.securetext1.value,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                BasicButton(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 21,
                  text: "submit",
                  onPressed: () {
                    if ((loginController.numController.text.isEmpty ||
                        loginController.passController.text.isEmpty)) {
                      MotionToast.error(
                        description:
                            const Text("Please complete your information"),
                        title: const Text("Fail"),
                      ).show(context);
                    } else {
                      clearTextFields();
                      Get.toNamed('/vehciles');
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
    loginController.numController.clear();
    loginController.passController.clear();
  }
}
