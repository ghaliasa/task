import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BasicTextField extends StatefulWidget {
  TextEditingController nameController;
  String text;
  bool securetext;
  GestureDetector gestureDetector;
  BasicTextField(
      {Key? key,
      required this.nameController,
      required this.text,
      required this.gestureDetector,
      required this.securetext})
      : super(key: key);

  @override
  State<BasicTextField> createState() => _BasicTextFieldState();
}

class _BasicTextFieldState extends State<BasicTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 15,
        decoration: BoxDecoration(
          color: Colors.purple.shade100,
          boxShadow: const [
            BoxShadow(
                color: Colors.white, blurRadius: 3.0, offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: TextField(
            style: const TextStyle(fontFamily: "C"),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: widget.text,
              hintStyle: const TextStyle(color: Colors.white, fontFamily: "C"),
              suffixIcon: widget.gestureDetector,
            ),
            controller: widget.nameController,
            obscureText: widget.securetext,
          ),
        ),
      ),
    );
  }
}
