import 'package:get/get.dart';

class UndanganController extends GetxController {
  //TODO: Implement UndanganController

  RxDouble opacityLevel = 1.0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    opacityLevel.value = opacityLevel.value == 1 ? 0.0 : 1.0;
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
