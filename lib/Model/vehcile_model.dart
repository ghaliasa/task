import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/drop_down_controller.dart';

class VehcileModel {
  TextEditingController boardController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  DropDownListController dropDownListControllervalue =
      Get.find<DropDownListController>();

  VehcileModel(
      {required this.boardController,
      required this.modelController,
      required this.idController,
      required this.colorController,
      required this.dropDownListControllervalue});

  TextEditingController get getModel => modelController;

  set setModel(TextEditingController model) =>
      modelController = modelController;

  TextEditingController get getboardNumber => boardController;

  set setboardNumber(TextEditingController boardController) =>
      this.boardController = boardController;

  TextEditingController get getcolor => colorController;

  set setcolor(TextEditingController colorController) =>
      this.colorController = colorController;

  TextEditingController get getidImage => idController;

  set setidImage(TextEditingController idController) =>
      this.idController = idController;

  DropDownListController get getselectType => dropDownListControllervalue;

  set setselectType(DropDownListController dropDownListControllervalue) =>
      this.dropDownListControllervalue = dropDownListControllervalue;
}
