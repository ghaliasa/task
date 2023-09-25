import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/image_controller.dart';

class BasicRow extends StatelessWidget {
  final String text;
  final ImageController controller = Get.put(ImageController());

  BasicRow({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: Obx(
            () => CircleAvatar(
              backgroundColor: Colors.purple.shade100,
              backgroundImage: controller.isImageVisible.value
                  ? const AssetImage('images/image1.png')
                  : null,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            controller.toggleImageVisibility();
          },
          child: Text(
            text,
            style: const TextStyle(color: Colors.purple, fontFamily: "C"),
          ),
        ),
      ],
    );
  }
}
