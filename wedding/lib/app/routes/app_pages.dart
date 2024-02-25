import 'package:get/get.dart';

import '../modules/undangan/bindings/undangan_binding.dart';
import '../modules/undangan/views/undangan_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.UNDANGAN;

  static final routes = [
    GetPage(
      name: _Paths.UNDANGAN,
      page: () => const UndanganView(),
      binding: UndanganBinding(),
    ),
  ];
}
