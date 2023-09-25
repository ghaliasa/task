import 'package:get/get.dart';

class ImageController extends GetxController {
  RxBool isImageVisible = false.obs;

  void toggleImageVisibility() {
    isImageVisible.value = !isImageVisible.value;
  }
}
