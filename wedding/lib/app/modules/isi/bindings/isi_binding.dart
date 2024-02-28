import 'package:get/get.dart';

import '../controllers/isi_controller.dart';

class IsiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IsiController>(
      () => IsiController(),
    );
  }
}
