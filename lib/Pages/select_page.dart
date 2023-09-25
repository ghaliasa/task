import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Component/basic_button.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
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
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              BasicButton(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 21,
                text: "Register",
                onPressed: () {
                  Get.toNamed('/register');
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              BasicButton(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 21,
                text: "Add Vehcile",
                onPressed: () {
                  Get.toNamed('/addvehcile');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
