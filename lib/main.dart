import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Controller/drop_down_controller.dart';
import 'package:task/Model/vehcile_model.dart';
import 'package:task/Pages/add_vehcile.dart';
import 'package:task/Pages/register_page.dart';
import 'package:task/Pages/select_page.dart';
import 'package:task/Pages/splash_page.dart';

import 'Pages/login_page.dart';
import 'Pages/vehciles.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  VehcileModel vehcileModel = VehcileModel(
      boardController: TextEditingController(text: ""),
      modelController: TextEditingController(text: ""),
      idController: TextEditingController(text: ""),
      colorController: TextEditingController(text: ""),
      dropDownListControllervalue: Get.put(DropDownListController()));

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Material App",
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Splash(),
        '/vehciles': (context) => Vehciles(
              list: const [],
            ),
        '/selectpage': (context) => const SelectPage(),
        '/addvehcile': (context) => AddVehcile(
              vehcileModel: vehcileModel,
              vehciles: const [],
            ),
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
      },
    );
  }
}
