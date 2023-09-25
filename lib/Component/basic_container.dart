import 'package:flutter/material.dart';

class BasicContainer extends StatefulWidget {
  final String text;
  final double width;
  final double font;
  // ignore: use_key_in_widget_constructors
  const BasicContainer(
      {required this.text, required this.width, required this.font});

  @override
  State<BasicContainer> createState() => _BasicContainerState();
}

class _BasicContainerState extends State<BasicContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple.shade100,
          boxShadow: const [
            BoxShadow(
                color: Colors.white, blurRadius: 3.0, offset: Offset(0, 5))
          ],
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: widget.font, color: Colors.white, fontFamily: "C"),
          ),
        ),
      ),
    );
  }
}
