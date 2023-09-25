import 'package:flutter/material.dart';
import 'package:task/Model/vehcile_model.dart';

// ignore: must_be_immutable
class VehcileBody extends StatefulWidget {
  VehcileModel vehcileModel;
  VehcileBody({Key? key, required this.vehcileModel}) : super(key: key);

  @override
  State<VehcileBody> createState() => _VehcileBodyState();
}

class _VehcileBodyState extends State<VehcileBody> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(height: 20, color: Colors.purple.shade100),
      Text(
        "The Board Number:  ${widget.vehcileModel.boardController.text}",
        style: const TextStyle(color: Colors.purple, fontFamily: "C"),
      ),
      Text(
        "The Vehcile Color:  ${widget.vehcileModel.colorController.text}",
        style: const TextStyle(color: Colors.purple, fontFamily: "C"),
      ),
      Text(
        "The Vehcile Model:  ${widget.vehcileModel.modelController.text}",
        style: const TextStyle(color: Colors.purple, fontFamily: "C"),
      ),
      Text(
        "The Vehcile Id:  ${widget.vehcileModel.idController.text}",
        style: const TextStyle(color: Colors.purple, fontFamily: "C"),
      ),
      Text(
        "The Vehcile Type:  ${widget.vehcileModel.dropDownListControllervalue.selectedItem.value}",
        style: const TextStyle(color: Colors.purple, fontFamily: "C"),
      ),
    ]);
  }
}
