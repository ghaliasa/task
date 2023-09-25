import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.toNamed('/selectpage');
    });
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset("images/image2.png"),
        ),
      ),
    );
  }
}
