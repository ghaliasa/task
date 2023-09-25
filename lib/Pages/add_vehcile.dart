import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:task/Component/basic_row.dart';
import 'package:task/Component/basic_text_field.dart';
import 'package:task/Model/vehcile_model.dart';
import 'package:task/Pages/vehciles.dart';

import '../Component/basic_button.dart';

// ignore: must_be_immutable
class AddVehcile extends StatefulWidget {
  VehcileModel vehcileModel;
  List<VehcileModel> vehciles;
  AddVehcile({Key? key, required this.vehcileModel, required this.vehciles})
      : super(key: key);
  @override
  State<AddVehcile> createState() => _AddVehcileState();
}

List dropdownList = ["car", "motor", "bysicle", "skoter", "van"];
bool securetext = true;

class _AddVehcileState extends State<AddVehcile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          const Center(
            child: Text(
              "Add Vehcile",
              style: TextStyle(
                  color: Colors.purple, fontFamily: "C", fontSize: 25),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 19,
          ),
          BasicTextField(
              nameController: widget.vehcileModel.boardController,
              text: "Board Number",
              gestureDetector: GestureDetector(
                child: Icon(
                  Icons.numbers,
                  color: Colors.purple.shade400,
                ),
              ),
              securetext: false),
          SizedBox(
            height: MediaQuery.of(context).size.height / 19,
          ),
          BasicTextField(
              nameController: widget.vehcileModel.modelController,
              text: "Model",
              gestureDetector: GestureDetector(
                child: Icon(
                  Icons.type_specimen,
                  color: Colors.purple.shade400,
                ),
              ),
              securetext: false),
          SizedBox(
            height: MediaQuery.of(context).size.height / 19,
          ),
          BasicTextField(
              nameController: widget.vehcileModel.colorController,
              text: "Color",
              gestureDetector: GestureDetector(
                child: Icon(
                  Icons.color_lens,
                  color: Colors.purple.shade400,
                ),
              ),
              securetext: false),
          SizedBox(
            height: MediaQuery.of(context).size.height / 19,
          ),
          BasicTextField(
              nameController: widget.vehcileModel.idController,
              text: "Id Image",
              gestureDetector: GestureDetector(
                child: Icon(
                  Icons.format_shapes,
                  color: Colors.purple.shade400,
                ),
              ),
              securetext: false),
          SizedBox(
            height: MediaQuery.of(context).size.height / 19,
          ),
          Center(
            child: Obx(
              () => Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 9,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 3.0,
                          offset: Offset(0, 5))
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      dropdownColor: Colors.purple,
                      iconEnabledColor: Colors.purple,
                      value: widget.vehcileModel.dropDownListControllervalue
                                  .selectedItem.value ==
                              ""
                          ? null
                          : widget.vehcileModel.dropDownListControllervalue
                              .selectedItem.value,
                      onChanged: (newValue) {
                        widget.vehcileModel.dropDownListControllervalue
                            .upDateSelectedItem(newValue.toString());
                      },
                      hint: const Text(
                        "Select Type",
                        style: TextStyle(color: Colors.white, fontFamily: "C"),
                      ),
                      items: dropdownList.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem<String>(
                          value: e,
                          child: Text(
                            e,
                            style: const TextStyle(
                                color: Colors.black, fontFamily: "C"),
                          ),
                        );
                      }).toList(),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 17,
          ),
          BasicRow(text: "Select Board Image"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 23,
          ),
          BasicRow(text: "Select Vehcile Image"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          BasicRow(text: "Select Mechanic Image"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          BasicRow(text: "Select Deletage Image"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          BasicButton(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 21,
            text: "Add",
            onPressed: () {
              if ((widget.vehcileModel.idController.text.isEmpty ||
                  widget.vehcileModel.colorController.text.isEmpty ||
                  widget.vehcileModel.boardController.text.isEmpty ||
                  widget.vehcileModel.modelController.text.isEmpty ||
                  widget.vehcileModel.dropDownListControllervalue.selectedItem
                      .value.isEmpty)) {
                MotionToast.error(
                  description: const Text(
                      "Can't add this vehcile, please complete your information"),
                  title: const Text("Fail"),
                ).show(context);
              } else {
                MotionToast.success(
                  description: const Text("Success to add this vehcile"),
                  title: const Text("Success"),
                ).show(context);
                widget.vehciles.add(widget.vehcileModel);
                Get.to(Vehciles(
                  list: widget.vehciles,
                ));
              }
            },
          ),
        ],
      ),
    );
  }

  void clearTextFields() {
    widget.vehcileModel.boardController.clear();
    widget.vehcileModel.modelController.clear();
    widget.vehcileModel.colorController.clear();
    widget.vehcileModel.idController.clear();
    widget.vehcileModel.dropDownListControllervalue.upDateSelectedItem("");
  }
}
