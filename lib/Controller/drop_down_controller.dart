import 'package:get/get.dart';

class DropDownListController extends GetxController {
  var selectedItem = "".obs;
  void upDateSelectedItem(String value) {
    selectedItem.value = value;
  }
}
