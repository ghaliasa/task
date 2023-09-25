import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BasicButton extends StatefulWidget {
  double width, height;
  String text;
  VoidCallback onPressed;
  BasicButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<BasicButton> createState() => _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Center(
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.purple.shade300,
            boxShadow: const [
              BoxShadow(
                  color: Colors.white, blurRadius: 2.0, offset: Offset(6, 6))
            ],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                  color: Colors.white, fontFamily: "C", fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
